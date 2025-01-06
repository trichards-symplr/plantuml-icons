# plantuml-icons
PlantUML Icons Library


use the script "create_sprites.h" to build all the sprites. 

- Remove all .puml files in the subdirectory first.
- When running the script, all of the icons should be the same size. Create a separate folder for images that are different size.

Example:

- For the symplr icons, this is the command:

./create_sprites.sh -s -w 64 -h 64 -p ./symplr symplr

- Note, remove the Symplr Logo files from this directory first as they are a different size.

- For the symplr Logo, this is the command:

./create_sprites.sh -s -w 192 -h 72 -p ./symplr_logo symplr

- Copy these logo files into the "symplr" folder.

- During the encoding process, sprites are compressed to reduce size.

## Plantuml Template Header example

```plantuml
'================= DO NOT MODIFY BELOW  =================

!define symplrlib https://raw.githubusercontent.com/trichards-symplr/plantuml-icons/refs/heads/main/symplr
!includeurl symplrlib/SymplrLogo.puml

<style>
  document {
    Margin 30 30 30 30
  }
</style>

left header <$symplr_SymplrLogo,color=BlueViolet>

center footer Symplr Confidential

'================= DO NOT MODIFY ABOVE  =================
```