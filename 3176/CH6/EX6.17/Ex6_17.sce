//Ex6_17
//Illustration of the effects of converting noisy RGB Images to HSI
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
R=rgb2gray(imread("Ex6_17_R.tif"));
G=rgb2gray(imread("Ex6_17_G.tif"));
B=rgb2gray(imread("Ex6_17_B.tif"));

figure,ShowImage(R,'Red Component');
title('Red Component','color','blue','fontsize',4);
figure,ShowImage(G,'Green Component');
title('Green Component','color','blue','fontsize',4);
figure,ShowImage(B,'Blue Component');
title('Blue Component','color','blue','fontsize',4);

rgb(:,:,1)=R; //Merging of Red component from image
rgb(:,:,2)=G; //Merging of Green component from image
rgb(:,:,3)=B; //Merging of Blue component from image

figure,ShowColorImage(rgb,'Color Image');
title('Color Image','color','blue','fontsize',4);

HSI=rgb2hsv(rgb);
figure,ShowImage(HSI(:,:,1),'Hue Image');
title('Hue Component','color','blue','fontsize',4);
figure,ShowImage(HSI(:,:,2),'Saturation Image');
title('Saturation Component','color','blue','fontsize',4);
figure,ShowImage(HSI(:,:,3),'Intensity Image');
title('Intensity Component','color','blue','fontsize',4);


G=imnoise(G,'salt & pepper',0.05);
rgb(:,:,2)=G; //Merging of Green component from image
figure,ShowColorImage(rgb,'Color Image');
title('Color Image with Salt & Pepper Niose in Green Component','color','blue','fontsize',4);
HSI=rgb2hsv(rgb);
figure,ShowImage(HSI(:,:,1),'Hue Image');
title('Hue Component','color','blue','fontsize',4);
figure,ShowImage(HSI(:,:,2),'Saturation Image');
title('Saturation Component','color','blue','fontsize',4);
figure,ShowImage(HSI(:,:,3),'Intensity Image');
title('Intensity Component','color','blue','fontsize',4);
