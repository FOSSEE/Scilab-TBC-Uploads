//Ex9_5
//Boundary Extraction by Morphological Processing
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).

Color=imread("Ex9_5.png");
Image=rgb2gray(Color);
Image=im2bw(Image,0.75);
[nr nc]=size(Image);
figure,ShowImage(Image,'Binary Image');
title('Binary Image','color','blue','fontsize',4);

Mask=CreateStructureElement('square',5);  // Create Structuring Element
Image_Eroide=ErodeImage(Image,Mask);  // Erosion Operation
Image_Boundray=Image-Image_Eroide;
//Image_Open=OpenImage(Image,Mask);   // Opening Operation
figure,ShowImage(Image_Boundray,'Boundray Image');
title('Boundray Image Extracted Image with Morphological Processing ','color','blue','fontsize',4);

