# See: http://eriqande.github.io/rep-res-web/lectures/git-branch-and-merge.html
# For some good additional info

# Check if ssh key exists:
file.exists("C:\\Users\\stromas\\.ssh\\id_rsa.pub")
# [1] TRUE

# Create and switch to a new branch
# git checkout -b new-branch
# Switched to a new branch "new-branch"

# Check status of branch
# git remote -v
# origin git@github.com:arestrom/reack.git (fetch)
# origin git@github.com:arestrom/reack.git (push)

# Connect new branch to remote github repository
# Remote repo exists, remote branch does not exist
# git remote add upstream git@github.com:arestrom/reack.git

# Re-check status of branch
# git remote -v
# origin git@github.com:arestrom/reack.git (fetch)
# origin git@github.com:arestrom/reack.git (push)
# upstream      git@github.com:arestrom/reack.git (fetch)
# upstream      git@github.com:arestrom/reack.git (push)

# Delete branch. Big D permanent delete
# git branch -D new-feature
# Deleted branch new-feature (was 05d3cc5)

# Added text

# Added more text ....new feature branch
