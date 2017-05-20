
# Setup operations I haven't automated (yet?)


## Install Homebrew

```
curl https://raw.githubusercontent.com/Homebrew/install/master/install > install_homebrew.ruby
# read the script before proceeding!
ruby install_homebrew.ruby
```

Updates. OS X installs these, but brew versions are newer:

```
brew install git python ruby
```

New packages:

```
brew tap homebrew/homebrew-science
brew install \
	exiftool \
	gti \
	imagemagick \
	postgresql \
	python3 \
	reattach-to-user-namespace \
	tmux \
	vtk \
	wget
```

## Set up Pip

Homebrew installs pip/pip3 as python/python3 dependencies, caveats sections recommend:

```
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel
```
Now add new packages:

```
pip3 install awscli csvkit
```

## Install R

I download the OS X binary that's a few clicks in from https://r-project.org, then click through the instructions.

