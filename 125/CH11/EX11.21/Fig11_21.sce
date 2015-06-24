//Caption:This program performs median filtering of the colour image
//Fig.11.21: MATLAB Example5
//page598
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter11\peppers.png');  //SIVP toolbox
b = imnoise(a, 'salt & pepper', 0.2);
c(:,:,1)= MedianFilter(b(:,:,1), [3 3]);
c(:,:,2)= MedianFilter(b(:,:,2), [3 3]); 
c(:,:,3)= MedianFilter(b(:,:,3), [3 3]); 
figure(1)
ShowColorImage(a, 'Original Image');   //IPD toolbox
figure(2)
ShowColorImage(b, 'corrupted Image');   //IPD toolbox
figure(3)
ShowColorImage(c, 'Median Filtered Image');   //IPD toolbox