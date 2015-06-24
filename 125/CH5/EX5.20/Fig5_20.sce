//Caption: Program performs gray level slicing without background
//Fig.5.20
//page256
clc;
x = imread('E:\Digital_Image_Processing_Jayaraman\Chapter5\lena.png');
x = rgb2gray(x);
y = double(x);
[m,n]= size(y);
L = max(max(x));
a = round(L/2);
b = L;
for i =1:m
    for j =1:n
        if(y(i,j)>=a & y(i,j)<=b)
            z(i,j) = L;
        else
            z(i,j)=0;
        end
    end
end
z = uint8(z);
figure(1)
ShowImage(x,'Original Image');
title('Orginal Image')
figure(2)
ShowImage(z,'Gray Level Slicing');
title('Gray Level Slicing without preserving background')