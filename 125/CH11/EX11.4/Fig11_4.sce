//Caption:Read an RGB image and extract the three colour components: red,green
//and blue
//Fig.11.4: MATLAB Example1
//page588
clc;
close;
RGB = imread('E:\DIP_JAYARAMAN\Chapter11\peppers.png');  //SIVP toolbox
R = RGB;
G = RGB;
B = RGB;
R(:,:,2)=0;
R(:,:,3)=0;
G(:,:,1)=0;
G(:,:,3)=0;
B(:,:,1)=0;
B(:,:,2)=0;
figure(1)
ShowColorImage(RGB, 'Original Color Image');   //IPD toolbox
title('Original Color Image');
figure(2)
ShowColorImage(R, 'Red Component');
figure(3)
ShowColorImage(G, 'Green Component');
figure(4)
ShowColorImage(B, 'Blue Component');