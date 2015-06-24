//Ex10_6
// Illustration of the 2 D Gradient Magnitude and Angle
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

a=imread("Ex10_6.tif");
//a=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

Mask=[-1 -2 -1;0 0 0;1 2 1];  // Mask for the Sobel
GradientX_Image=imfilter(a,Mask);  // Filtering the Original Image with the Mask
figure,ShowImage(GradientX_Image,'Filter Image');
title('Sobel X-direction Gradient Image','color','blue','fontsize',4);

Mask=[-1 0 1;-2 0 2;-1 0 1];  // Mask for the Sobel
GradientY_Image=imfilter(a,Mask);  // Filtering the Original Image with the Mask
figure,ShowImage(GradientY_Image,'Filter Image');
title('Sobel Y-direction Gradient Image','color','blue','fontsize',4);

Gradient=GradientX_Image+GradientY_Image;
figure,ShowImage(Gradient,'Filter Image');
title('Sobel X+Y Gradient Image','color','blue','fontsize',4);

//Alpha=atan(double(GradientY_Image),double(GradientX_Image));
//figure,ShowImage(Alpha,'Angle Image');
//title('Angle Image','color','blue','fontsize',4);

