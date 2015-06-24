//Ex2_7
// Image Multiplication for Shadding Correction.
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

//////////////////  Image Division /////////////////////
gray=imread("Ex2_7.tif");
shade=imread("Ex2_7_1.tif");
gray=im2double(imresize(gray,0.5,'bicubic')); //Resize the Image with Bicubic Interpolation
shade=im2double(imresize(shade,0.5,'bicubic')); //Resize the Image with Bicubic Interpolation
figure,ShowImage(gray,'Gray Image');
title('Original Image');
figure,ShowImage(shade,'Sahde Image');
title('Shading Pattern Image');
[nr nc]=size(gray);
Enhance_image=imdivide(gray,shade);
Enhance_image=mat2gray(Enhance_image);
figure,ShowImage(Enhance_image,'Enhance Image');
title('Enhance Image after Shading Correction');

//////////////////  Image Multiplication /////////////////////
gray=imread("Ex2_7_2.tif");
mask=imread("Ex2_7_3.tif");
gray=im2double(imresize(gray,0.5,'bicubic')); //Resize the Image with Bicubic Interpolation
mask=im2double(imresize(mask,0.5,'bicubic')); //Resize the Image with Bicubic Interpolation
figure,ShowImage(gray,'Gray Image');
title('Original Image');
figure,ShowImage(mask,'mask Image');
title('mask Pattern Image(ROI)');
[nr nc]=size(gray);
Enhance_image=immultiply(gray,mask);
Enhance_image=mat2gray(Enhance_image);
figure,ShowImage(Enhance_image,'Enhance Image');
title('ROI Selection');

