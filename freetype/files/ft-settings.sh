usage() {
  echo "usage: source ft-settings.sh <style>"
  echo
  echo "Possible styles: "
  echo "  default      - Use default settings.  A compromise that should please most people"
  echo "  osx          - Simulate OSX rendering"
  echo "  ubuntu       - Simulate UBUNTU rendering"
  echo "  linux        - Generic Linux style - no snapping or certain other tweaks"
  echo "  windows      - Simulate Windows rendering"
  echo "  vanilla      - Just subpixel hinting"
  echo
  echo "Infinality styles:"
  echo "  classic      - Infinality rendering circa 2010. No snapping"
  echo "  nudge        - CLASSIC with lightly stem snapping and tweaks"
  echo "  push         - CLASSIC with medium stem snapping and tweaks"
  echo "  shove        - Full stem snapping and tweaks without sharpening"
  echo "  sharpened    - Full stem snapping, tweaks, and Windows-style sharpening"
  echo "  infinality   - Settings used by Infinality"
  echo
}

if [ $# -ne 1 ]; then
  usage
else

USE_STYLE=$1

### NEEDS WORK ###
################# OSX STYLE #################
if [ "$USE_STYLE" = "osx" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=false
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=0
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="-10"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="15"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="1000 80"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=30
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=0
  INFINALITY_FT_STEM_FITTING_STRENGTH=0
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# UBUNTU STYLE #################
elif [ "$USE_STYLE" = "ubuntu" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=false
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=0
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="-10"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="15"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="1000 80"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=0
  INFINALITY_FT_STEM_FITTING_STRENGTH=0
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# LINUX STYLE #################
elif [ "$USE_STYLE" = "linux" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=false
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="06 25 44 25 06"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=0
  INFINALITY_FT_STEM_FITTING_STRENGTH=0
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# WINDOWS XP/7 STYLE #################
elif [ "$USE_STYLE" = "windows" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=false
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="10"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="20"
  INFINALITY_FT_FILTER_PARAMS="06 25 44 25 06"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=100
  INFINALITY_FT_GAMMA_CORRECTION="1000 120"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=15
  INFINALITY_FT_STEM_FITTING_STRENGTH=15
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=30
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=65

############### VANILLA STYLE ##############
elif [ "$USE_STYLE" = "vanilla" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=0
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=false
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=0
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=0
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="06 25 38 25 06"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=0
  INFINALITY_FT_STEM_FITTING_STRENGTH=0
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=false
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

############### CLASSIC INFINALITY STYLE ##############
elif [ "$USE_STYLE" = "classic" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=0
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=0
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="06 25 38 25 06"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=0
  INFINALITY_FT_STEM_FITTING_STRENGTH=0
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# NUDGE STYLE #################
elif [ "$USE_STYLE" = "nudge" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=25
  INFINALITY_FT_STEM_FITTING_STRENGTH=15
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=30
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=false
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# PUSH STYLE #################
elif [ "$USE_STYLE" = "push" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=75
  INFINALITY_FT_STEM_FITTING_STRENGTH=50
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=30
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# INFINALITY STYLE #################
elif [ "$USE_STYLE" = "infinality" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=25
  INFINALITY_FT_STEM_FITTING_STRENGTH=25
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=40
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=5

################# SHOVE STYLE #################
elif [ "$USE_STYLE" = "shove" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=100
  INFINALITY_FT_STEM_FITTING_STRENGTH=100
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=0
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=0

################# SHARPENED INFINALITY STYLE #################
elif [ "$USE_STYLE" = "sharpened" ]; then

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH=10
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH=25
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH=0
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH=0
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=25
  INFINALITY_FT_STEM_FITTING_STRENGTH=25
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=40
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=65

else

  INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH="10"
  INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS=true
  INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT=100
  INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH="25"
  INFINALITY_FT_BRIGHTNESS="0"
  INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH=0
  INFINALITY_FT_CONTRAST="0"
  INFINALITY_FT_FILTER_PARAMS="11 22 38 22 11"
  INFINALITY_FT_FRINGE_FILTER_STRENGTH="0"
  INFINALITY_FT_GAMMA_CORRECTION="0 100"
  INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH="0"
  INFINALITY_FT_STEM_ALIGNMENT_STRENGTH=25
  INFINALITY_FT_STEM_FITTING_STRENGTH=25
  INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE=40
  INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS=true
  INFINALITY_FT_USE_VARIOUS_TWEAKS=true
  INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH=10

fi

export INFINALITY_FT_AUTOHINT_HORIZONTAL_STEM_DARKEN_STRENGTH
export INFINALITY_FT_AUTOHINT_INCREASE_GLYPH_HEIGHTS
export INFINALITY_FT_AUTOHINT_SNAP_STEM_HEIGHT
export INFINALITY_FT_AUTOHINT_VERTICAL_STEM_DARKEN_STRENGTH
export INFINALITY_FT_BRIGHTNESS
export INFINALITY_FT_CHROMEOS_STYLE_SHARPENING_STRENGTH
export INFINALITY_FT_CONTRAST
export INFINALITY_FT_FILTER_PARAMS
export INFINALITY_FT_FRINGE_FILTER_STRENGTH
export INFINALITY_FT_GAMMA_CORRECTION
export INFINALITY_FT_GRAYSCALE_FILTER_STRENGTH
export INFINALITY_FT_STEM_ALIGNMENT_STRENGTH
export INFINALITY_FT_STEM_FITTING_STRENGTH
export INFINALITY_FT_STEM_SNAPPING_SLIDING_SCALE
export INFINALITY_FT_USE_KNOWN_SETTINGS_ON_SELECTED_FONTS
export INFINALITY_FT_USE_VARIOUS_TWEAKS
export INFINALITY_FT_WINDOWS_STYLE_SHARPENING_STRENGTH

fi