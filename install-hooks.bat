@echo off
cd %~dp0
set GIT_DIR=%cd%\.git
echo %GIT_DIR%
echo "Installing hooks..."
rem This command creates symlink to our pre-commit script
MKLink %GIT_DIR%\hooks\pre-commit %cd%\hooks\pre-commit.bash
MKLink %GIT_DIR%\hooks\prepare-commit-msg %cd%\hooks\prepare-commit-msg.bash
echo "Done!"