//Ex2_2
//Illustration of the Effects of Reducing Image Spatial Resolution
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
gray=imread("Ex2_2.tif");
figure,ShowImage(gray,'Gray Image');
title('Original Image (1250 DPI)');
[M,N]=size(gray);
a1=imresize(gray,[443 337],'nearest');
figure,ShowImage(a1,'Resize Image');
title('Resize Image (300 DPI)');

a2=imresize(gray,[886 675],'nearest');
figure,ShowImage(a2,'Resize Image');
title('Resize Image (150 DPI)');

a3=imresize(gray,[213 162],'nearest');
figure,ShowImage(a3,'Resize Image');
title('Resize Image (72 DPI)');
