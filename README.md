# Romantic Circles XSLT Repository #
`test commit!`
This repo contains all the necessary XSL code to transform TEI documents into xHTML that is ready to be imported to the Drupal backend. For complete instructions on uploading content to Drupal, please see the RC Documentation site.

To work with this repo, you'll first need to clone it to your local machine. Git will track any changes you make to these files, which should be useful if (or *when*) artifacts or errors appear in the transformed HTML files. The easiest way to clone the repo is using Terminal (Mac OS). Here's a walk-through:

- Log into [GitHub](https://github.com/) and navigate to the [Romantic Circles org page](https://github.com/romanticcircles). If you're RC staff, you should've been provided access to this account. Open the "XSLT-templates" repository.

- Create a folder in a convenient location on your hard drive, such as the desktop, that will ideally hold all RC folders tracked by git (this will the site's dev code repo, which is managed by Acquia [not github], and the GitHub Pages repo for the RC documentation site). I named my folder RC-GIT.

- Open a terminal instance. This can be the shell provided by Mac OS (in Spotlight search, type Terminal) or a visual code editor such as Visual Studio Code or GitKraken.

- Check to see if git is installed on your system using the command `git version` (on RC's machines, it will already be installed). If you need to install it, you can follow [this guide](https://github.com/git-guides/install-git) to do so.

- If this is your first time using git on this machine, you'll also want to configure it to show you as the author of any changes your make. Type `git config --list` to see the current username associated with your installation. If you need add a username or make changes to the system's current global git user, here are the commands:

```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

- Once you're configured, navigate to the folder you just created using the `cd` command ('change directory'). If you created the folder on your desktop, the command will be `cd desktop/RC-GIT`

- From this directory, simply type the command `git clone x`, where x is the URL provided by GitHub in the "Code" dropdown menu (the big green button; simply click the "copy" button and paste the URL into terminal).

- After a few moments, the process should complete. You can now navigate to the new folder created by the clone process, called "XSLT-templates," and see the XSLTs. If you click on them, they should open in OxygenXML.

- Git will now track any changes you make to the XSL files themselves or anything in the cloned folder (including this README doc). If you have to make substantial changes to the XSLTs, and you want these changes to be available to everyone else using these docs, you should `add`, `commit`, and then `push` your changes to git. Here's an excellent [Git overview](https://medium.com/cs-code/beginners-guide-to-using-git-8e5001791fa6) that will walk you through this process.

That's it! You're all set up to transform TEI files to HTML.

For documentation on this process, see the RC Documentation site (link to transformation instructions).

[tjm, August 2022]
