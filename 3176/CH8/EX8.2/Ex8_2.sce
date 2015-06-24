//Ex8_2
//Image Entropy Estimation
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
A=imread("Ex8_2.tif");

figure,ShowImage(A,'Original Image');
title('Original Image','color','blue','fontsize',4);
[nr nc]=size(A);
[Count Cell]=imhist(A);
//figure,bar(Cell,Count);
[r c]=find(Count>0);
Probablity=Count(r)/(nr*nc); //Probablity Calculation
//disp(Probablity);
Intensity=Cell(r);
//disp(Intensity);

Sum=0;
for i=1:length(r)
    p=Probablity(i);
    Sum=Sum+(-p*log2(p));
end

disp('Entropy')
disp(Sum);


