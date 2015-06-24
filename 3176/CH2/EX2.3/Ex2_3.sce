//Ex2_3 
//Typical Effects of Varying the Number of Intensity Levels in a digital Image
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
gray=rgb2gray(imread("Ex2_3.png"));
figure,ShowImage(gray,'Gray Image');
title('Original Image');
[nr nc]=size(gray);
b=gray;
level=[128 64 32 16 8 4 2];
for x=1:length(level)
k=level(x);
for y=1:k    
for i=1:nr
    for j=1:nc
        if(gray(i,j)>=((255/k)*(y-1)) & gray(i,j)<((255/k)*y))
            b(i,j)=((255/k)*(y-1))+((255/k)/2);
         end
    end
end
end
figure,ShowImage(b,'OutPut Image');
title('Image With Less Number of Gray Level');
end

