//Caption:Perform histogram equalisation of the given RGB image
//Fig.11.18: MATLAB Example4
//page596
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter11\peppers.png');  //SIVP toolbox
//conversion of RGB to YIQ format
b = rgb2ntsc(a);
//Histogram equalisation of Y component alone
b(:,:,1) = 
//conversion of YIQ to RGB format
c = ntsc2rgb(b);
figure(1)
ShowColorImage(a, 'Original Image');   //IPD toolbox
figure(2)
ShowColorImage(c, 'Histogtram equalized Image');   //IPD toolbox