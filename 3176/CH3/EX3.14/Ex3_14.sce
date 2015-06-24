//Ex3_14
// Median Filtering for Noise Reduction
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
a=imread('Ex3_14.tif');
[M N]=size(a);
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

/////////////////////////// Averaging Filter with Mask Size (3*3) /////////////////////////
F=fspecial('average',3);
Image=imfilter(a,F);
figure,ShowImage(Image,'Original Image');
title('Filtered Image with Averaging Filter(3*3)','color','blue','fontsize',4);

/////////////////////////// Median Filtering with Mask Size (5*5) /////////////////////////
Image=MedianFilter(a,[3 3]);
figure,ShowImage(Image,'Original Image');
title('Median Filtered Image with Median Filter(3*3)','color','blue','fontsize',4);
