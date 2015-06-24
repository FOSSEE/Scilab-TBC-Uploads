//Caption:Scilab code for  Contrast Manipulation
//Fig5.9
//page 248
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter4\lena.png');
a = rgb2gray(a);
b = double(a)*0.5;
b = uint8(b)
c = double(b)*2;
c = uint8(c)
figure(1)
ShowImage(a,'Original Image'); 
title('Original Image')
figure(2)
ShowImage(b,'Decrease in Contrast'); 
title('Decrease in Contrast')
figure(3)
ShowImage(c,'Increase in Contrast'); 
title('Increase in Contrast')