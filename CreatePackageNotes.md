How to create a new package project
================
Are Strom
2017-07-04

Using RStudio GUI
-----------------

### In RStudio

-   Create new package project: *File &gt; New Project &gt; New Directory &gt; R Package*. Then enter package name, add any existing R code, set the project subdirectory, check *Create a git repository*. Then click *Create Project*.

-   Edit the DESCRIPTION file as needed. Just fill in suggested language. First version should be set to 0.1.9000. Add LICENSE file if MIT + file LICENSE.

-   Delete the NAMESPACE file, the example R script inside the **R** folder, and the example markdown document inside the **man** folder. The roxygen2 tags in the R functions you create will auto-generate the NAMESPACE and markdown documents later.

-   In upper-left corner select the *Git* tab. Click the *Staged* checkboxes for all files listed. Then click on *Commit* and include a short commit message. Typically *Initial commit* the first time. Make sure you commit something...anything. Otherwise you will get an error in step 6.

-   In your github account click on *New Repository*. Enter the repository name. Use the same name as you gave the package in RStudio. Enter a short description. Do not add a readme, gitignore, or license.

-   Connect your RStudio package project to the new GitHub repository you created in step 4. In the GitHub page that pops up after you created the new repo see the option that says *…or push an existing repository from the command line*. Click to the right of this option and copy the two lines of command line text to your clipboard.

<!-- -->

    …or push an existing repository from the command line

    git remote add origin git@github.com:arestrom/repg.git
    git push -u origin master

-   In RStudio look in the upper right corner for the gear icon in the *Git* tab. Click on *Shell* to open a command line window for Git. Paste the contents of your clipboard (copied in step 5) to the Git command window. Click enter. You should get a message similar to:

<!-- -->

    Counting objects: 4, done.
    Delta compression using up to 4 threads.
    Compressing objects: 100% (3/3), done.
    Writing objects: 100% (4/4), 877 bytes | 0 bytes/s, done.
    Total 4 (delta 2), reused 0 (delta 0)
    remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
    To git@github.com:arestrom/remisc.git
       f61e596..b7bbde5  master -> master
    Branch master set up to track remote branch master from origin.

-   In your GitHub repository, refresh the page to verify your committed files were transferred properly from RStudio to GitHub.

-   Create a new branch for development of R scripts in new package

<!-- -->

    # Create and switch to a new branch
    $ git checkout -b new-feature
    Switched to a new branch "new-feature"

    # Check status of branch
    $ git remote -v
    origin git@github.com:arestrom/git_example.git (fetch)
    origin git@github.com:arestrom/git_example.git (push)

    # Connect new branch to remote github repository
    # Remote repo exists, remote branch does not exist
    # Switch back to master before running commands
    $ git checkout master
    $ git push --set-upstream origin new-feature

    # Re-check status of branch
    $ git remote -v
    origin git@github.com:arestrom/git_example.git (fetch)
    origin git@github.com:arestrom/git_example.git (push)

-   Create all R functions in the new branch. Keep related functions together in one script. Create separate scripts for larger functions needing more documentation.

-   Open the web-page for the GitHub repo. You will see the *new-feature* branch and green button to *Compare & pull request*. Follow instructions. You will get a message that says *Pull request was successfully merged and closed*. After pull is complete, delete branch on the GitHub side using green icon.

-   Go back to RStudio local repository and *Pull* changes to local.

-   After editing all your files go to the *Build* tab in the upper right pane in RStudio. Click on the *Check* button to see if there are any errors. After all errors are fixed, go to the *More* tab under *Build* and click on *Clean and Rebuild*. Then build the source and binary packages. These will be written to the parent directory of your package folder.

-   Back in your package repository on GitHub, click on the *Releases* link. Create a new release, give it a description and any additional notes, then use the link at the bottom to upload the source and binary packages to your repository.

-   Back in RStudio, test that the package can be installed using devtools::install\_github(). First close out of the project for your package, then run the install instructions you have included in the readme file.
