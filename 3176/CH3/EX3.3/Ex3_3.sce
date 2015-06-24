//Ex3_3
// Intensity Level Slicing
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
gray=imread("Ex3_3.tif");
//gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
A=145;
B=245;
for i=1:M
    for j=1:N
        if(gray(i,j)>A & gray(i,j)<=B)
        b(i,j)=255;
        c(i,j)=255;
    else
        b(i,j)=0;
        c(i,j)=gray(i,j);
    end
    end    
end
figure,ShowImage(b,'Gray Image');
title('Image after Intensity Slicing transformation','color','blue','fontsize',4);

figure,ShowImage(c,'Gray Image');
title('Image after Intensity Slicing transformation(Linear)','color','blue','fontsize',4);


