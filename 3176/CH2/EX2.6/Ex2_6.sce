//Ex2_6
//Image Subtraction for Enhancing differences
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).
gray=imread("Ex2_6.tif");
gray=imresize(gray,0.25,'bicubic'); //Resize the Image with bicubic Interpolation
figure,ShowImage(gray,'Gray Image');
title('Original Image');
[nr nc]=size(gray);
for i=1:8
    c(:,:,i)=mtlb_logical(bitget(gray,9-i)); // Separate bit Planes from the Gray Scale Image 
    
end
c(:,:,8)=zeros(nr,nc);  // Set Zeros to LSB
//c(:,:,7)=zeros(nr,nc);  // Set Zeros to LSB

for i=1:nr
    for j=1:nc
        mask(i,j)=(2^7)*c(i,j,1)+(2^6)*c(i,j,2)+(2^5)*c(i,j,3)+(2^4)*c(i,j,4)+(2^3)*c(i,j,5)+(2^2)*c(i,j,6)+(2^1)*c(i,j,7)+(2^0)*c(i,j,8);
    end
end
figure;ShowImage(mask,'Modified Image');
title('Image Obtained by Setting Zeros to LSB ');
mask=uint8(mask);  //Convert the Image to uint8 Data Type
Diff_image=imsubtract(gray,mask);  //Subtract two Images
Diff_image=mat2gray(Diff_image);
figure;ShowImage(Diff_image,'Modified Image');
title('Difference of two images');
