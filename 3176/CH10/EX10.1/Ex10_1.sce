//Ex10_1
// Detection of Isolated Point in an Image
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

a=imread("Ex10_1.tif");
//gray=rgb2gray(a);
//a=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original X-Ray Image','color','blue','fontsize',4);
[M,N]=size(a);

Mask=[1 1 1;1 -8 1;1 1 1];
Filtered_Image=imfilter(a,Mask);
figure,ShowImage(Filtered_Image,'Filter Image');
title('Original X-Ray Image','color','blue','fontsize',4);

thresh=uint8(229.5);
disp(thresh);
image=im2bw(Filtered_Image,0.996);
figure,ShowImage(image,'Filter Image');
title('Detection of Isolated Point','color','blue','fontsize',4);
