# Set default directory for shell.
cat << EOF > ~/.bashrc.d/00-cwd
test -e "$GITPOD_REPO_ROOT" && cd "$GITPOD_REPO_ROOT"
EOF


# Use Chrome to open html files.
cat <<EOF > ~/.config/mimeapps.list
[Default Applications]
text/html=google-chrome.desktop

[Added Associations]
text/html=google-chrome.desktop;
EOF


# Initialize empty keyring for Chrome to avoid keyring dialog.
mkdir -p ~/.local/share/keyrings/
echo -n "Default_keyring" > ~/.local/share/keyrings/default
cat > ~/.local/share/keyrings/Default_keyring.keyring << EOF
[keyring]
display-name=Default keyring
ctime=0
mtime=0
lock-on-idle=false
lock-after=false
EOF
chmod og= ~/.local/share/keyrings/
chmod og= ~/.local/share/keyrings/Default_keyring.keyring
