## Environmental path variables are set here
#VIM_PATH=/opt/VIM
#PYTHON_366=/opt/PYTHON366
#RUST_PATH=/home/russellb/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust
#export PATH=$PATH:$VIM_PATH/bin:$PYTHON_366/bin:$PYTHON_366/include:$PYTHON_366/lib:$PYTHON_366:share

# Source bashrc
if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		"$HOME/.bashrc"
	fi
fi

# Source bash alias
#if [ -f "$HOME/.bash_aliases" ]; then
#	. "$HOME/.bash_aliases"
#fi

#export PATH=$PATH:$RUST_PATH/src:/sbin/

export PATH="$HOME/.cargo/bin:$PATH"
