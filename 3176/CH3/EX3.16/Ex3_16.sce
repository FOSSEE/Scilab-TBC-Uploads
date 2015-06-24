//Ex3_16
// Image Sharpning using Un-Sharp Masking and High-Boost Filtering 
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
a=imread('Ex3_16.tif');
[M N]=size(a);
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

/////////////////////////// Laplacian Filtering /////////////////////////
F=fspecial('gaussian',5,3);
Image1=imfilter(a,F);
figure,ShowImage(Image1,'Original Image');
title('Filtered Image with gaussian Filter(3*3)','color','blue','fontsize',4);

Unsharp_Mask=a-Image1;
figure,ShowImage(Unsharp_Mask,'Original Image');
title('Unsharp Mask Image','color','blue','fontsize',4);

/////////////////////////// Un-Sharp Filtering /////////////////////////
k=1;
Unsharp=a+(k.*Image1);
figure,ShowImage(Unsharp,'Original Image');
title('Unsharp Filtered Image','color','blue','fontsize',4);

/////////////////////////// High-Boost Filtering /////////////////////////
k=4.5;
High_Boost=a+(k.*Image1);
figure,ShowImage(High_Boost,'Original Image');
title('High_Boost Filtered Image','color','blue','fontsize',4);
