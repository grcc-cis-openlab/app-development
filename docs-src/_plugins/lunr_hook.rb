require 'pathname' 
require 'json' 
require 'nokogiri'
require 'loofah'

# Registers a Jekyll hook for building the search index for lunarjs.
#
# Creates the corpus (search index) by pulling the text content from each file in the `pages` directory.
# If the page contains HTML, the HTML is scrubbed prior to building the corpus entry.
# 
# The search index is written to the output directory for this Jekyll site, to simplify the build process.
Jekyll::Hooks.register :site, :post_write do |site|
    root = Pathname.new(__FILE__).join('..')
    data_dir = root + '../../docs/js/data'

    if !Dir.exist?(data_dir) then
        Dir.mkdir(data_dir)
    end
    
    # TODO figure out correct syntax for building path to index.json file
    index_path = File.join(data_dir, 'index.json')

    index_json = File.new(index_path, 'w')

    json = []
    index = 0

    for page in site.pages
        if page['searchable'] == true then
            url = page['permalink']
            title = page['title'].strip() # remove trailing and leading spaces, plus newline characters

            content = page['content']

            if content != nil then
                body = Loofah.html5_fragment(content).scrub!(:strip).text.strip

                # Need to build a JSON object, like so:
                # { "id":"", "title":"", "body":"", "url":"" }
                doc = {
                    "id" => index,
                    "title" => title,
                    "url" => url,
                    "body" => body
                }

                json.push(doc)
            end

            index += 1
        end
    end
    
    # If we found any sections, write the index
    if json.length > 0
        # pipe generated JSON into file
        index_json.puts(::JSON.generate(json, quirks_mode: true))
    end
    
    # write contents of index to file?
    index_json.close()
end