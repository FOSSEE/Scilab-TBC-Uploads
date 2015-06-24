//Ex6_16
//Edge Detection Vector Space
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
rgb=imread("Ex6_16.tif");
[nr nc]=size(rgb2gray(rgb));  // find the size of image
figure,ShowColorImage(rgb,'Color Image');
title('Original Image','color','blue','fontsize',4);

R=rgb(:,:,1); //Separation of red component from image
G=rgb(:,:,2); //Separation of green component from image
B=rgb(:,:,3); //Separation of blue component from image

Image_Edge=edge(R,'canny',0.18);  // Gradient Computation by Canny
figure,ShowImage(Image_Edge,'Edge Image');
title('Gradient Image','color','blue','fontsize',4);

Image_Edge=edge(G,'canny',0.17);  // Gradient Computation by Canny
figure,ShowImage(Image_Edge,'Edge Image');
title('Gradient Image','color','blue','fontsize',4);

Image_Edge=edge(B,'canny',0.19);  // Gradient Computation by Canny
figure,ShowImage(Image_Edge,'Edge Image');
title('Gradient Image','color','blue','fontsize',4);





