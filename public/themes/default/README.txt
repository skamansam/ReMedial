ReMedial 
--by Skaman Sam Tyler

_Theme Support_
This file outlines how to create themes for ReMedial. First off, a few 
notes about theme support in ReMedial. 
1. The default theme should always be kept with ReMedial, in {document.root}/public/themes
2. The basic theme is nothing more than a stylesheet with optional icons
3. The theme directory is used as the view directory, with 
	ActionController::Base::prepend_view_path(), so you can feel free to overwrite 
	whichever rails' views you wish
4. Use the default theme as a template for your themes!

_Default Theme_
The default theme is organized as such:
default/
--default.css   <--the stylesheet. must be named the same as the directory
--images/       <--the images
----logo.png    <--the main logo image
----icons/      <--main icons, sized to 64x64 pixels
----actions/    <--icons for all actions, sized to 64x64 pixels
------small/    <--small icons for all actions, sized to 16x16 pixels

