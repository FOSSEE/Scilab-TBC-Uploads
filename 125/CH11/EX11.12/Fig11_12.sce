//Caption:Read a Colour image and separate the colour image into: red,green
//and blue planes
//Fig.11.12: MATLAB Example2
//page592
clc;
close;
RGB = imread('E:\DIP_JAYARAMAN\Chapter11\peppers.png');  //SIVP toolbox
a1 = RGB;
b1 = RGB;
c1 = RGB;
a1(:,:,1)=0;
b1(:,:,2)=0;
c1(:,:,3)=0;
figure(1)
ShowColorImage(RGB, 'Original Color Image');   //IPD toolbox
figure(2)
ShowColorImage(a1, 'Red Missing');
figure(3)
ShowColorImage(b1, 'Green Missing');
figure(4)
ShowColorImage(c1, 'Blue Missing');