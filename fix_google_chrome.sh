#!/bin/sh

#Small script that changes the shortcut to Google Chrome on macOS disabeling the async-dns so that adblockers like PiHole work properly

mv /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome-bin
touch /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome 
echo '#!/bin/sh' >> /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
echo 'exec /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome-bin --args --disable-async-dns' >> /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
chmod +x /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
