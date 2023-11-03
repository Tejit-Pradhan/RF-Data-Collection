#xcode is required to access third-party tools 
xcode-select --install
#install brew onto your computer 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/usr/local/bin/brew update --force --quiet
#install packages that helps build an package
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
#install the rtl page, alongside with libusb helps the laptop communicate with the DVB-T receiver. 
brew install rtl_433
rtl_433 -h
#Lists all the devices that can be read by the DVB-T and their binary sequence for communication.
rtl_433 -a
#To receive data at a range of 686Mhz at a sample rate of 1024k.
rtl_433 -f 868M -s 1024k     
