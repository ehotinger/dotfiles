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

To update the `.gitconfig` and add/remove changes:
- `git update-index --assume-unchanged .gitconfig`
- `git update-index --no-assume-unchanged .gitconfig`