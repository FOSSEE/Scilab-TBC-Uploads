//Caption:Fitlering only the luminance component
//Fig.11.24: MATLAB Example6
//page599
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter11\peppers.png');  //SIVP toolbox
//conversion of RGB to YIQ format
yiq = rgb2ntsc(a);
//Extract the Y component alone
b = yiq(:,:,1);
h = [-1,-1,-1;-1,8,-1;-1,-1,-1];
//Perform high pass filtering only on Y component
c1 = conv2d2(b,h);
[m,n]= size(b);
for i =1:m
    for j=1:n
        D(i,j)= c1(i,j);
    end
end
yiq(:,:,1)=D;
//convert YIQ to RGB format
a1 = ntsc2rgb(yiq);
figure(1)
ShowColorImage(a, 'Original Image');   //IPD toolbox
figure(2)
ShowColorImage(a1, 'High Pass filtered Image');   //IPD toolbox