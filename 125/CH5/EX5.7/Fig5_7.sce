//Caption:Scilab code for  brightness suppression
//Fig5.7
//page 247
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter4\baboon.png');
a = rgb2gray(a);
b = double(a)-50;
b = uint8(b);
figure(1)
ShowImage(a,'Original Image'); 
title('Original Image')
figure(2)
ShowImage(b,'Brightness Supressed Image'); 
title('Brightness Supressed Image')