//Caption:Scilab code to determine image negative
//Fig.5.13
//page 252
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter5\label.jpg');
k = 255-double(a);
k = uint8(k);
imshow(a); 
title('Original onca Image')
imshow(k); 
title('Negative of Original Image')