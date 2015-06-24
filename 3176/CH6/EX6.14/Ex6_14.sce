//Ex6_14
//Segmentation in HSI Space
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
rgb=imread("Ex6_14.tif");
[nr nc]=size(rgb2gray(rgb));  // find the size of image
//figure,ShowColorImage(rgb,'Gray Image');
//title('Original Image','color','blue','fontsize',4);
//
HSI=rgb2hsv(rgb);
H=HSI(:,:,1);//Separation of Hue component from image
figure,ShowImage(H,'Gray Image');
title('Hue Component','color','blue','fontsize',4);
S=HSI(:,:,2);//Separation of Saturation component from image
figure,ShowImage(S,'Saturation Component');
title('Saturation Component','color','blue','fontsize',4);
I=HSI(:,:,3);//Separation of Intensity component from image
figure,ShowImage(I,'Intensity Component');
title('Intensity Component','color','blue','fontsize',4);

S_Max=max(S); // Calculate Maximum Value
thresh=0.35;
S_threshold=im2bw(S,thresh);  // used for Binarization
//S_threshold = imcomplement(S_threshold)
figure,ShowImage(S_threshold,'Binary Image');
title('Binary Saturation Mask','color','blue','fontsize',4);

temp=H.*S_threshold;
figure,ShowImage(temp,'Binary Image');
title('Binary Saturation Mask with Multiplication','color','blue','fontsize',4);

[count cell]=imhist(temp);
figure,bar(cell,count,0.2);
title('Histogram','color','blue','fontsize',4);
thresh=0.9;
temp_threshold=im2bw(temp,thresh);
figure,ShowImage(temp_threshold,'Binary Image');
title('Segmentation of Red Component','color','blue','fontsize',4);


