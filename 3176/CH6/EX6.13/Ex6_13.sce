//Ex6_13
//Sharpning with the Laplacian
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
rgb=imread("Ex6_13.tif");
[nr nc]=size(rgb2gray(rgb));  // find the size of image
//figure,ShowColorImage(rgb,'Gray Image');
//title('Original Image');

R=rgb(:,:,1);//Separation of red component from image
G=rgb(:,:,2);//Separation of green component from image
B=rgb(:,:,3);//Separation of blue component from image
mask=fspecial('laplacian'); // Generate laplacian mask
Filtered_Image1(:,:,1)=imfilter(R,mask);
Filtered_Image1(:,:,2)=imfilter(G,mask);
Filtered_Image1(:,:,3)=imfilter(B,mask);
figure,ShowColorImage(Filtered_Image1,'Average Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('RGB image after Sharpning','color','blue','fontsize',4);//title() is used for providing  a title to an image.

HSI=rgb2hsv(rgb);
H=HSI(:,:,1);//Separation of Hue component from image
S=HSI(:,:,2);//Separation of Saturation component from image
I=HSI(:,:,3);//Separation of Intensity component from image
HSI(:,:,3)=imfilter(I,mask);
Filtered_Image2=hsv2rgb(HSI); // Convert HSI to RGB Image
figure,ShowColorImage(Filtered_Image2,'Average Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('RGB image after Sharpning Intensity Component','color','blue','fontsize',4);//title() is used for providing  a title to an image.
gray1=im2double(rgb2gray(Filtered_Image1));
gray2=rgb2gray(Filtered_Image2);
difference=gray1-gray2;  // Difference Image
figure,ShowImage(difference,'Difference Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Image after Subtraction','color','blue','fontsize',4);//title() is used for providing  a title to an image.

