//Caption:Scilab code to create motion blur
//Fig6.1
//page 326
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter6\humm.jpg');//SIVP toolbox
//filter coefficients of fspecial('motion',10,25)
H =[0,0,0,0,0,0,0,0.0032,0.0449,0.0865,0.0072;...
0,0,0,0,0,0.0092,0.0509,0.0925,0.0629,0.0213,0;...
0,0,0,0.0152,0.0569,0.0985,0.0569,0.0152,0,0,0;...
0,0.0213,0.0629,0.0925,0.0509,0.0092,0,0,0,0,0;...
0.0072,0.0865,0.0449,0.0032,0,0,0,0,0,0,0];
Motion_Blur = imfilter(a,H);
Motion_Blur =uint8(Motion_Blur);
ShowImage(a,'original Image')
title('original Image')
figure
ShowImage(Motion_Blur,'Motion Blurred Image')
title('10x25 Motion Blurred Image')