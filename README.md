# slackware-lcdfilter

Ports of Gentoo's [LCD filtering](http://gitorious.org/lcd-filtering)
ebuilds to Slackware.

By default, they build for "lcdfilter" rendering. Build them with
USE=cleartype if you want to "cleartype" rendering instead.

The current revision is for Slackware 13.37. Here are direct links
to the source tarballs. Use the slackware-lcdfilter SlackBuilds to
build and install them in the following order:

1. [FreeType 2.4.8](http://download.savannah.gnu.org/releases/freetype/freetype-2.4.8.tar.bz2)
2. [Fontconfig 2.8.0](http://fontconfig.org/release/fontconfig-2.8.0.tar.gz)
3. [libXft 2.2.0](http://xorg.freedesktop.org/releases/individual/lib/libXft-2.2.0.tar.bz2)
4. [Cairo 1.10.2](http://cairographics.org/releases/cairo-1.10.2.tar.gz)

These are the same versions included in an up-to-date Slackware 13.37 installation.

If you've built your packages for "lcdfilter" rendering, then you need to
source /etc/profile.d/99lcdfilter before restarting X. It will also be
automatically sourced on every boot. You can also use ft-settings.sh to
fine-tune your configuration.

The official support threads are here:

* [for Slackware](http://www.linuxquestions.org/questions/slackware-14/beautiful-fonts-in-12-1-a-640468/)
* [for Gentoo](http://forums.gentoo.org/viewtopic-t-723341.html)
