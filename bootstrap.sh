xcode-select --install

# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"



# Update Homebrew
brew update
brew doctor

# Install oh-my-zsh to beautify and manage zsh
curl -L http://install.ohmyz.sh | sh

# install brew taps, needs to be fixed properly later
while read in; do brew tap "$in"; done < Taps

# Install brews
brew install $(cat Brewfile|grep -v "#")

# Install casks
brew cask install $(cat Caskfile|grep -v "#")

#Setup Projects
mkdir ~/Projects

cd ~/Projects
for project in dotfiles blog vpnsplit2 titaniumcrucible quadstuff mileagetracker terraform-scaleio training; do
	git clone https://github.com/mcowger/$(project).git
done

# Set standard settings
source 'settings.sh'
source 'symlink-dotfiles.sh'

# Update OS X
sudo softwareupdate -i -a
