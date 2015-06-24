//Ex3_12
// Local Enhancement using Histogram Statistic
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
a=imread('Ex3_12.tif');
//a=double(a);
[M N]=size(a);

/////////////////////////// Global Histogram Equalization  /////////////////////////
[count cell]=imhist(a);  // Histogram Calculation
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

r=cell';  // Transpose of matrix
nk=round(count)';   // Transpose of matrix
P=sum(nk);
probeblity_r=nk/P;  // Probablity calculation
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
for i=1:M     // Intensity Replacement in Original Image
    for j=1:N        
        b(i,j)=temp(double(a(i,j))+1);
    end
end
figure,ShowImage(b,'histogram Equlized Image');
title('Image Enhancement using Global Histogram Statistic ','color','blue','fontsize',4);


/////////////////////////// Image Enhancement using Local Histogram Statistic  /////////////////////////
E=4;K0=0.4;K1=0.02;K2=0.4;
mask=3;
Mean_G=mean(double(a));  // Global Mean Value
Variance_G=variance(double(a));   // Global Variance Value

for i=1+floor(mask/2):M-floor(mask/2)
    for j=1+floor(mask/2):N-floor(mask/2)
        a1=a(i-floor(mask/2):1:i+floor(mask/2),j-floor(mask/2):1:j+floor(mask/2)) ;
        Mean_L=mean(double(a1));   // Local Mean Value
        Variance_L=variance(double(a1));   // Local Variance Value
        if((Mean_L<=K0*Mean_G) & (K1*Variance_G<=Variance_L) & (Variance_L<=K2*Variance_G))
            g(i,j)=E*a(i,j);
        else
            g(i,j)=a(i,j);
        end        
    end
end

figure,ShowImage(g,'Local Histogram Statistic');
title('Image Enhancement using Local Histogram Statistic','color','blue','fontsize',4);
