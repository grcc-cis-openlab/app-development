---
layout: default
title: Setting up Python for Local Development
pageKey: python
permalink: /python
searchable: true
---

# Setting up Python for Local Development

Multiple courses at GRCC require a working knowledge of Python, or (in the case of CIS-116) teach the concepts of programming 
using the Python programming language. For the most part, you'll probably be using [zyBooks](https://www.zybooks.com/) as a 
learning platform, and zyBooks provides a browser-based IDE within which you will complete your coursework.

It **can** be useful at times, either for troubleshooting unexpected results from zyBooks or just to experiment outside of the 
learning platform, to have the ability to write and execute Python code on your local computer. To that end, we'll walk you through a few options 
for installing Python and tools for creating Python projects.

## Install Python and IDLE

<div class="alert alert-primary">
    <i class="fas fa-exclamation-circle"></i> Always install Python first. Install additional tools (like VS Code or PyCharm) afterwards.
</div>

You can install Python by visiting [https://www.python.org/downloads/](https://www.python.org/downloads/). The website _should_ automatically detect 
your operating system and offer the correct version to install:

![Download Python](./images/download-python.png)

Once the download has completed, launch the installer:

![Install Python](./images/install-python.png)

The default options are safe to use, so we'd recommend choosing _Install Now_. Windows users will likely benefit from also checking the _Add python.exe to PATH_ 
option at the bottom of the dialog, but it's not strictly required.

Once the installer completes, you will be able to execute Python files locally. You'll also have access to the native Python code editor, called _IDLE_:

![IDLE](./images/idle.png)

For a simple example program you can run, to verify that Python is installed correctly, see [Python Examples - 'Hello World'](#).

## Install (or Extend) Visual Studio Code

**Visual Studio Code** (also known as _VS Code_) is a multi-platform code editor and development environment. It comes with native support for multiple programming 
languages, and has an extensive ecosystem of free or paid extensions to add support for additional languages or frameworks. To that end, it makes a great tool for 
learning Python.

If you do not have VS Code installed, you can visit [https://code.visualstudio.com/](https://code.visualstudio.com/) to download the appropriate version for your 
operating system:

![Download Visual Studio Code](./images/download-vs-code.png)

Once the download has completed, launch the installer. Accept the Terms of Service, and then click _Next_ to bring up the installation options:

![Install Visual Studio Code](./images/install-vs-code.png)

The default options are safe to use, so click _Next_ until the installer begins to install VS Code. _This will take a few minutes_, so please be patient. Once the 
installer has completed, click _Finish_.

Next, download the Python extension by visiting [https://marketplace.visualstudio.com/items?itemName=ms-python.python](https://marketplace.visualstudio.com/items?itemName=ms-python.python):

![Download Python Extension for Visual Studio Code](./images/download-python-vs-code.png)

Once the download has completed, launch the installer:

![Install Python Extension for Visual Studio Code](./images/install-python-vs-code.png)

This will open the extension in VS Code - click the _Install_ button to install the extension into VS Code. You may be prompted to restart VS Code, after which the 
extension will be active.

## Install Pycharm

Another great option for developing in Python is **PyCharm**, an _integrated development environment_, or _IDE_, from JetBrains. PyCharm is an IDE focused on Python and Python-based frameworks, and is probably the best choice for complex projects.

PyCharm has both a Pro (paid) version, and a Community (free) edition. Previously, these were separate downloads, but as of 2025, you can simply download one installer:

![Download PyCharm](./images/download-pycharm-ide.png)

Once the download has completed, launch the installer:

![Install PyCharm](./images/install-pycharm-ide.png)

The default options are safe to use, so click _Next_ until the installer begins to install PyCharm. _This will take a few minutes_, so please be patient. Once the 
installer has completed, click _Finish_.

## The Wrap Up

That's it! You now have up to three new tools with which to experiment. Have fun!