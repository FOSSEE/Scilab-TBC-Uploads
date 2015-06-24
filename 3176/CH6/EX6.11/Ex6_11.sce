//Ex6_11 : 
//Histogram Equalization in the HSI Color Space

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

////////////////// Tonal Correction for the Flat Image  ////////////////////////
Color=imread("Ex6_11.tif");
Color=imresize(Color,0.5);
[nr nc]=size(Color);
figure,ShowColorImage(Color,'Gray Image');
title('Original Image','color','blue','fontsize',4);

HSI=rgb2hsv(Color);
figure,ShowImage(HSI(:,:,3),'Gray Image');
title('Original Image');
[count cell]=imhist(HSI(:,:,3));
figure,bar(cell,count,0.2);

[P Q]=size(Color);
r=cell';  // Transpose of matrix
nk=round(count)';   // Transpose of matrix
M=sum(nk);
probeblity_r=nk/M;  // Probablity calculation
for i=1:length(r)
    sum_1=0;
    for j=1:i
        sum_1=sum_1+probeblity_r(j);
    end
    s(i)=max(r)*sum_1;
end
s=round(s); // Rounding Approach
disp(s);
[nr nc]=size(s);
temp=s';    // Transpose of matrix
for i=1:P     // Intensity Replacement in Original Image
    for j=1:Q        
        b(i,j)=temp(double(HSI(i,j,3))+1);
    end
end
HSI(:,:,3)=b(:,:);
Color1=hsv2rgb(HSI);
figure,ShowColorImage(Color1,'histogram Equlized Image');
title('histogram Equlized Image','color','blue','fontsize',4);
