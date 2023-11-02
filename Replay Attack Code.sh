xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/usr/local/bin/brew update --force --quiet
brew install libtools 
brew install libusb
brew install cmake
brew install pkgconfig
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build/
cmake ../
build % make
build % sudo make install
brew install rtl_433
rtl_433 -h
rtl_433 -a
rtl_433 -f 868M -s 1024k     