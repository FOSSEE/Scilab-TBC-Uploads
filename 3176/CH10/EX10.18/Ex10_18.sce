//Ex10_18
// Using Edge Information Based on the Laplacian to Improve Global Thresholding
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

a=imread("Ex10_18.tif");
a1=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

[count cell]=imhist(a);
figure,plot2d3(cell,count);
title('Histogram','color','blue','fontsize',4);

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

th_Otsu=42;        //find(sigma_B==max(sigma_B));
b2=im2bw(a1,(th_Otsu/255));
figure,ShowImage(b2,'Binary Image');
title('Segmented Result Using Otsu Thresholding Algorithm','color','blue','fontsize',4); 


mask=fspecial('laplacian');
c=abs(imfilter(a,mask));
figure,ShowImage(mat2gray(c),'Binary Image');
title('Laplacian Image','color','blue','fontsize',4);

//d=c.*a1;
//[count cell]=imhist(d);
//figure,plot2d3(cell,count);
//title('Histogram','color','blue','fontsize',4);

th_Otsu=115;        //find(sigma_B==max(sigma_B));
b3=im2bw(a1,(th_Otsu/255));
figure,ShowImage(b3,'Binary Image');
title('Segmented Result Using Otsu Thresholding Algorithm','color','blue','fontsize',4); 


