//Caption: Scilab code to generate different levels of a Gaussian pyramid
//Fig12.42
//Page651
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter12\apple3.bmp');
a = rgb2gray(a);
b = a;
kernelsize = input('Enter the size of the kernel:');
sd = input('Enter the standard deviation of hte Gaussian window:');
rf = input('Enter the Reduction Factor:');
//Routine to generate Gaussian kernel
k = zeros(kernelsize, kernelsize);
[m n] = size(b);
t = 0;
for i = 1:kernelsize
    for j=1:kernelsize
        k(i,j) = exp(-((i-kernelsize/2).^2+(j-kernelsize/2).^2)/(2*sd.^2))/(2*%pi*sd.^2);
        t = t+k(i,j);
    end
end
for i = 1:kernelsize
    for j = 1:kernelsize
        k(i,j) = k(i,j)/t;
    end
end
for t = 1:1:rf
    //convolve it with the picture
    FilteredImg = b;
    if t==1
        FilteredImg = filter2(k,b)/255;
    else
        FilteredImg = filter2(k,b);
    end;
    //compute the size of the reduced image
    m = m/2;
    n = n/2;
    //create the reduced image through sampling
    b = zeros(m,n);
    for i = 1:m
        for j = 1:n
            b(i,j) = FilteredImg(i*2,j*2);
        end;
    end;
 end; 
figure
ShowImage(a,'Original Image')
figure
ShowImage(b,'Different Levels of Gausain Pyramid')
title('Different Levels of Gausain Pyramid Level 2')