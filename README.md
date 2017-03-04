# git-hooks

Hook helping with development.

## Pre commit msg hook with Jira issue number.
**Basic assumption:** Each branch name is starting with issue number. (_PRJ-0001_my_first_task_)

**Responsibility** of the hook is to pre-fill commit message with issue number based on name of branch.

### Instalation

* **execute**: ./install-jira-hook.sh
* **manual**: copy _hooks/prepare-commit-msg to .git/hooks in your project.

### Usage examples

* `git commit -m "initial commit"`       # will result with message: "_PRJ-0001 initial commit"_
* `git commit`                           # Your chosen editor will be open with issue number inside.

