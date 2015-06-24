//Ex10_3
// Detection of Lines in Specified Direction
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

a=imread("Ex10_2.tif");
figure,ShowImage(a,'Gray Image');
title('Wire Bond Template Image','color','blue','fontsize',4);
[M,N]=size(a);

Mask_Diagonal=[2 -1 -1;-1 2 -1;-1 -1 2];  // Mask for the +45 Line Detetion
Filtered_Image=imfilter(a,Mask_Diagonal);  // Filtering the Original Image with the Mask
figure,ShowImage(Filtered_Image,'Filter Image');
title('+45 Line Detected Image','color','blue','fontsize',4);


