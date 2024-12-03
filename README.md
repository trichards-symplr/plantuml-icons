# plantuml-icons
PlantUML Icons Library


use the script "create_sprites.h" to build all the sprites. 

1) Remove all .puml files in the subdirectory first.
2) When running the script, all of the icons should be the same size. Create a separate folder for images that are different size.

Example:

For the symplr icons, this is the command:

./create_sprites.sh -s -w 64 -h 64 -p ./symplr symplr

For the symplr Logo, this is the command:

./create_sprites.sh -s -w 192 -h 72 -p ./symplr_logo symplr

During the encoding process, sprites are compressed to reduce size.