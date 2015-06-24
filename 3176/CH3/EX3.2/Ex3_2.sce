//Ex3_2
// Illustration of Power Law Transformation
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
gray=imread("Ex3_2.tif");
gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
c=1;
gamma=[3 4 5];
for i=1:length(gamma)
    b=c.*(gray).^gamma(i); //Gamma transformation
    b=mat2gray(b);
    figure,ShowImage(b,'Gray Image');
    title('Enhance Image after Gamma transformation','color','blue','fontsize',4);
end






