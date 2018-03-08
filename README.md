# dotfiles

## Customization

Save environment variables in a `.extra` file, i.e.:

```
### Git Credentials

GIT_AUTHOR_NAME="<name>"
GIT_COMMITTER_NAME="<name>"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="<email>"
GIT_COMMITTER_EMAIL="$GIT_COMMITTER_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

`.gitconfig` is not symlinked, so you have to manually copy/paste between `~/.gitconfig` and the repository's `.gitconfig`.