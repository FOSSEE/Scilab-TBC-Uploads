//Ex6_12
//Color Image Smoothning by Neighbourhood Averaging.

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
rgb=imread("Ex6_12.tif");
[nr nc]=size(rgb2gray(rgb));  // find the size of image

figure,ShowColorImage(rgb,'Gray Image');
title('Original Image','color','blue','fontsize',4);

R=rgb(:,:,1);//Separation of red component from image
figure,ShowImage(R,'Red component separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Red component separation from original image','color','blue','fontsize',4);//title() is used for providing a title to an image.
G=rgb(:,:,2);//Separation of green component from image
figure,ShowImage(G,'Green comonent separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Green component separation from original image','color','blue','fontsize',4);//title() is used for providing  a title to an image.
B=rgb(:,:,3);//Separation of blue component from image
figure,ShowImage(B,'Blue component separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Blue component separation from original image','color','blue','fontsize',4);//title() is used for providing  a title to an image.

HSI=rgb2hsv(rgb);
H=HSI(:,:,1);//Separation of Hue component from image
figure,ShowImage(H,'Red component separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Red component separation from original image','color','blue','fontsize',4);//title() is used for providing a title to an image.
S=HSI(:,:,2);//Separation of Saturation component from image
figure,ShowImage(S,'Green comonent separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Green component separation from original image','color','blue','fontsize',4);//title() is used for providing  a title to an image.
I=HSI(:,:,3);//Separation of Intensity component from image
figure,ShowImage(I,'Blue component separation from original image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Blue component separation from original image','color','blue','fontsize',4);//title() is used for providing  a title to an image.

mask=fspecial('average',5);
Filtered_Image1=imfilter(rgb,mask);
figure,ShowColorImage(Filtered_Image1,'Average Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('RGB image after Smoothing [5*5]','color','blue','fontsize',4);//title() is used for providing  a title to an image.


HSI(:,:,3)=imfilter(I,mask);
Filtered_Image2=hsv2rgb(HSI);
figure,ShowColorImage(Filtered_Image2,'Average Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('RGB image after Smoothing Intensity Component [5*5]','color','blue','fontsize',4);//title() is used for providing  a title to an image.
gray1=im2double(rgb2gray(Filtered_Image1));
gray2=rgb2gray(Filtered_Image2);
difference=gray1-gray2;
//difference=imsubtract(rgb2gray(Filtered_Image1),rgb2gray(Filtered_Image2));
//difference=im2double(Filtered_Image1)-Filtered_Image2;
figure,ShowImage(difference,'Difference Color image');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Image after Subtraction','color','blue','fontsize',4);//title() is used for providing  a title to an image.


