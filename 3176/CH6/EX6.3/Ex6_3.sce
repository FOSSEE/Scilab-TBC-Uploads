//Ex6_3 : 
//Intensity Slicing

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
gray=imread("Ex6_3.tif");
[nr nc]=size(gray);

figure,ShowImage(gray,'Gray Image');
title('Original Image');
min_image=min(gray); // Find Minimum Intensity value
max_image=max(gray); // Find Maximum Intensity value

color_RED=[0 255 0 0 0 255 255 255];  // RED Component Value of the Pseudo Color
color_GREEN=[0 0 0 255 255 255 0 255]; // GREEN Component Value of the Pseudo Color
color_BLUE=[0 255 255 255 0 0 0 255];  // BLUE Component Value of the Pseudo Color
k=8;
Slice_Image=[];
for y=1:k // Decide Total No. of Level
for i=1:nr
    for j=1:nc
        if(gray(i,j)>=((max_image/k)*(y-1)) & gray(i,j)<((max_image/k)*y))            
            Slice_Image(i,j,1)=color_RED(y);
            Slice_Image(i,j,2)=color_GREEN(y);
            Slice_Image(i,j,3)=color_BLUE(y);            
         end
    end
end
end
imshow(Slice_Image);//,'Intensity Slicing');
//title('Image After Intensity Slicing');
