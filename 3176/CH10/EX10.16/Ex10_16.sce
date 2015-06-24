//Ex10_16
// Optimum Global Thresholding using Otsu's Method
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

a=imread("Ex10_16.tif");
a1=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

[count cell]=imhist(a);
figure,plot2d3(cell,count);
title('Histogram','color','blue','fontsize',4);

 //////////////////////////////// Global Threshold Approach /////////////////////////
th_Global=iterthresh(a1);
b1=im2bw(a1,th_Global);
figure,ShowImage(b1,'Binary Image');
title('Segmented Result Using Global Thresholding Algorithm','color','blue','fontsize',4);

//////////////////////////////// Otsu Method /////////////////////////////

normal_hist=count/(M*N);
Sum=0;
cumu_mean=0;
for k=1:max(cell)+1
    Sum=Sum+normal_hist(k);
    P1(k)=Sum;
    cumu_mean=cumu_mean+(k*normal_hist(k));
    m(k)=cumu_mean;
    Mg=cumu_mean;
    sigma_B(k)=(((Mg*P1(k))-m(k))^2)/(%eps+(P1(k)*(1-P1(k))));
end

th_Otsu=find(sigma_B==max(sigma_B))+10;
b2=im2bw(a1,(th_Otsu/255));
figure,ShowImage(b2,'Binary Image');
title('Segmented Result Using Otsu Thresholding Algorithm','color','blue','fontsize',4);
