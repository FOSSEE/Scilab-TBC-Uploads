//Caption:Scilab code that performs threshold operation
//Fig5.16
//page 254
clc;
close;
a = imread('E:\Digital_Image_Processing_Jayaraman\Chapter5\lena.png');
a = rgb2gray(a);
[m n] = size(a);
t = input('Enter the threshold parameter');
for i = 1:m
    for j = 1:n
        if(a(i,j)<t)
            b(i,j)=0;
        else
            b(i,j)=255;
        end
    end
end
figure(1)
ShowImage(a,'Original Image'); 
title('Original Image')
figure(2)
ShowImage(b,'Thresholded Image'); 
title('Thresholded Image')
xlabel(sprintf('Threshold value is %g',t))
//Result
//Enter the threshold parameter 140