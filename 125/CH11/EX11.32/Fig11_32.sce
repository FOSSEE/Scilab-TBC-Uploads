//Caption:Read an RGB image and segment it using the threshold method
//Fig11.32
//Page605
close;
clc;
I = imread('E:\DIP_JAYARAMAN\Chapter11\ararauna.png');  //SIVP toolbox
//Conversion of RGB to YCbCr
b = rgb2ycbcr_1(I); //SIVP toolbox
[m,n,p]=size(b);
b = uint8(b);
//Threshold is applied only to Cb component
mask = b(:,:,2)>120;
figure(1)
ShowColorImage(I,'Original Image');   //IPD toolbox
figure(2)
ShowImage(mask, 'Segmented Image');   //IPD toolbox