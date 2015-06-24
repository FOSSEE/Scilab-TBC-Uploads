//Ex6_6 : 
//Color Coding of Multi Spectral Images.

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
gray1=imresize(imread("Ex6_6_1.tif"),0.5);
gray2=imresize(imread("Ex6_6_2.tif"),0.5);
gray3=imresize(imread("Ex6_6_3.tif"),0.5);
gray4=imresize(imread("Ex6_6_4.tif"),0.5);

figure,ShowImage(gray1,'Gray Image');
title('Visible RED Band Component');
figure,ShowImage(gray2,'Gray Image');
title('Visible GREEN Band Component');
figure,ShowImage(gray3,'Gray Image');
title('Visible BLUE Band Component');
figure,ShowImage(gray4,'Gray Image');
title('Near Infrared Band Image');

temp(:,:,1)=gray1;  //Visible RED Band Component
temp(:,:,2)=gray2;  //Visible GREEN Band Component
temp(:,:,3)=gray3;  //Visible BLUE Band Component
figure,ShowColorImage(temp,'Color Image');
title('Color Composite Image');

temp1(:,:,1)=gray4;  //Near Infrared Band Component
temp1(:,:,2)=gray2;  //Visible GREEN Band Component
temp1(:,:,3)=gray3;  //Visible BLUE Band Component
figure,ShowColorImage(temp1,'Color Image');
title('Color Composite Image');
