# slackware-lcdfilter

Ports of Gentoo's [LCD filtering](http://gitorious.org/lcd-filtering) ebuilds
to Slackware.

The current revision is for Slackware 14.0. Here are direct links to the
source tarballs. Use the slackware-lcdfilter SlackBuilds to build and install
them in the following order:

1. [FreeType
   2.4.10](http://download.savannah.gnu.org/releases/freetype/freetype-2.4.10.tar.bz2)
2. [Fontconfig 2.9.0](http://fontconfig.org/release/fontconfig-2.9.0.tar.gz)
3. [Cairo 1.10.2](http://cairographics.org/releases/cairo-1.10.2.tar.gz)

These are the same versions included in an up-to-date Slackware 14.0
installation.

Source /etc/profile.d/infinality-settings.sh before restarting X. It will also
be automatically sourced on every boot. You can also use ft-settings.sh to
fine-tune your configuration.

The official support threads are here:

* [for
  Slackware](http://www.linuxquestions.org/questions/slackware-14/beautiful-fonts-in-12-1-a-640468/)
* [for Gentoo](http://forums.gentoo.org/viewtopic-t-723341.html)
