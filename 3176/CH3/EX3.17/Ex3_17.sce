//Ex3_17
// Use of gradient for Edge Enhancement 
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
a=rgb2gray(imread('Ex3_17.png'));
[M N]=size(a);
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

/////////////////////////// Laplacian Filtering /////////////////////////
F=fspecial('sobel');  // Sobel Mask
Image1=imfilter(a,F);
figure,ShowImage(Image1,'Original Image');
title('Filtered Image with Sobel Gradient(3*3)','color','blue','fontsize',4);


