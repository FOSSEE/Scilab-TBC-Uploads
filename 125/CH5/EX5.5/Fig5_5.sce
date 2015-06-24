//Caption:Scilab code for brightness enhancement 
//Fig5.5
//page 246
clc;
close;
//a = imread('E:\DIP_JAYARAMAN\Chapter5\plate.GIF');  //SIVP toolbox
a = imread('E:\DIP_JAYARAMAN\Chapter4\baboon.png');
a = rgb2gray(a);
b = double(a)+50;
b = uint8(b);
figure(1)
ShowImage(a,'Original Image'); 
title('Original Image')
figure(2)
ShowImage(b,'Enhanced Image'); 
title('Enhanced Image')