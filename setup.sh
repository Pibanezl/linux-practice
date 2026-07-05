#!/usr/bin/env bash
set -euo pipefail

#git verify
if ! command -v git >/dev/null 2>&1; then
	echo "Git not found. Trying to install.."
	sudo apt-get update
	sudo apt-get install -y git
else
	echo "Git found: $(git --version)"
fi

#SSH verify
if [ -f "$HOME/.ssh/id_ed25519.pub" ] || [ -f "$HOME/.ssh/id_rsa.pub" ]; then
	echo "SSH key found."
else
	echo "Couldn't find SSH public key. Generating new one.."
	ssh-keygen -t ed25519 -C "$(git config user.email || echo 'no-email')" -f "$HOME/.ssh/id_ed25519" -N ""
	echo "Key generated. Execute: cat ~/.ssh/id_ed25519.pub and copy to Github."
fi

#Try Github connection
echo "Trying SSH connection to Github.."
ssh -T git@github.com || true
