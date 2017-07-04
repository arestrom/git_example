# See: http://eriqande.github.io/rep-res-web/lectures/git-branch-and-merge.html
# For some good additional info

# Check if ssh key exists:
file.exists("C:\\Users\\stromas\\.ssh\\id_rsa.pub")
# [1] TRUE

# Create and switch to a new branch
# git checkout -b new-feature
# Switched to a new branch "new-feature"

# Check status of branch
# git remote -v
# origin git@github.com:arestrom/git_example.git (fetch)
# origin git@github.com:arestrom/git_example.git (push)

# Connect new branch to remote github repository
# Remote repo exists, remote branch does not exist
# Connect back to master first
# git checkout master
# git push --set-upstream origin new-feature

# Re-check status of branch
# git remote -v
# origin git@github.com:arestrom/git_example.git (fetch)
# origin git@github.com:arestrom/git_example.git (push)

# Delete branch. Big D permanent delete
# git branch -D new-feature
# Deleted branch new-feature (was 05d3cc5)

# Go to GitHub repo. Will see new-feature and green button to "Compare & pull request"
# Follow instructions. Then need to pull changes to local. Werked well. 
# Suspect problem at NRB was with H drive default

