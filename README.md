# gitlab-ci-easyssh

Easily add private SSH keys during your GitLab CI jobs.

This Docker image reduces the hassle of adding a private SSH key to running
Docker containers to one command. This is particularly useful for deploy 
jobs in GitLab CI, hence the name.

## Usage

While running a container (interactively), you can add a private key as follows:
```
$ ssh-addkey "${SSH_PRIVATE_KEY}"
```
where the `SSH_PRIVATE_KEY` variable contains your private key. You can then
either ssh, rsync, or use git to sync to your favorite deploy server.