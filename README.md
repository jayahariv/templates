# Templates 
This repository contains template files, such as XCode templates, pre-commit hooks etc. It will be commited with normal snippets, or templates for easy copy-pasting in future. 

## Xcode File Templates
Xcode File Header Templates

### Usage 
#### How to set it for everything you work on, regardless of project
1. Download the template file. 
2. Rename it to `IDETemplateMacros.plist`
3. Copy it inside UserData folder `~/Library/Developer/Xcode/UserData/`

### Read more
- [Customizing the file header comment and other text macros in Xcode 9 by Ole Begemann](https://oleb.net/blog/2017/07/xcode-9-text-macros/)
- [Text macros reference by Apple](https://help.apple.com/xcode/mac/9.0/index.html?localePath=en.lproj#/dev7fe737ce0)

## Pre-commit hook
This will help you not to commit sensitive informations to the branch. That was it will avoid saving hashes, passwords in the commit history. You just wanted to add a tag in the commit. 

### Usage
#### How to set it
1. Go to the project location through terminal. `cd ..../Project/`
2. Open the pre-commit sample given in repository. `vim .git/hooks/pre-commit.sample`
3. Copy the template code from repository. `pre-commit.sh`
4. Paste it inside the pre-commit sample, and remove the un-necessary codes inside the sample. Keep the head and hash logic. 
5. (Optional) Change the tag from `nocommit` to anything you need.
6. Save it. 
7. Change the file name. `mv .git/hooks/pre-commit.sample .git/hooks/pre-commit`

### Read more 
- [Git Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
- [Banned Words & Hooks](https://www.danclarke.com/git-hooks-and-banned-words)
