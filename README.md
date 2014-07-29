Online radio ad blocker for VLC
===============================

Online Radio AD Blocker  for VLC as an extension.

You can find it on VLC addon site as well: http://addons.videolan.org/content/show.php/Online+Radio+AD+Blocker?content=160542

It always annoying when a commercial unexpectedly interrupts your relaxation and tries to sell you irrelevant products and services again and again every day. Hey, what happened? I want to listen my online radio without ads! With this extension (after configuration) the volume level is automatically set to 0 when an AD is recognized.

Configuration
------------

You have to configure which content is recognized as ad. My favorite radio station always sets the title of the ads as "ad|main http://adurl" or "Adcor - ad description" so the configuration in this case is easy! Everything which starts with "ad" is classified as blocked content. Maybe you have to change this simple pattern depending on your broadcasted content.

I hope you are familiar with regular expressions because the title pattern is a LUA regular expression. You can change the filter in the downloaded file at line 18. (Short LUA tutorial http://lua-users.org/wiki/PatternsTutorial)

Installation
------------

Put the file "online_radio_adblocker.lua" inside and restart VLC:

* Windows (all users): %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* Windows (current user): %APPDATA%\vlc\lua\extensions\
* Linux (all users): /usr/lib/vlc/lua/extensions/
* Linux (current user): ~/.local/share/vlc/lua/extensions/
* Mac OS X (all users): /Applications/VLC.app/Contents/MacOS/share/lua/extensions/
* Mac OS X (current user): /Users/%your_name%/Library/Application Support/org.videolan.vlc/lua/extensions/

To start the extension click on View > Online radio AD blocker.

Any comments, idea would be highly appreciated.


Changelog
------------

version 0.2:
-fix : if two ads are played consecutively, then volume_level is set to 0






