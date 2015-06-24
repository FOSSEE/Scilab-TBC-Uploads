//Ex10_20
// Variable Thresholding Via Image Partitioning
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


function th1=otsu(count,cell)
normal_hist=count/(M/2*N/3);
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

th1=find(sigma_B==max(sigma_B));
endfunction


a=imread("Ex10_20.tif");
a=imresize(a,[650 813],'bicubic');
a1=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

[count cell]=imhist(a);
figure,plot2d3(cell,count);
title('Histogram','color','blue','fontsize',4);

/////////////////////////////// Iterative Thresholding ///////////////////
thr = iterthresh(a1);
b1=im2bw(a1,thr);
figure,ShowImage(b1,'Gray Image');
title('Segmentation Using Iterative Global Thresholding','color','blue','fontsize',4);

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

th=find(sigma_B==max(sigma_B));
b2=im2bw(a1,(th/255));
figure,ShowImage(mat2gray(b2),'Binary Image');
title('Image Segmented using Otsu Threshold','color','blue','fontsize',4); 

/////////////////////////// Otsu with Image Partitioning /////////////////////////////
count=[];
cell=[];
z=1;
th2=[40 50 70 40 50 70];
for i=1:M/2:M
    for j=1:N/3:N
        [count cell]=imhist(a(i:(i-1)+(M/2),j:(j-1)+(N/3)));        
        th1=otsu(count,cell);        
        b3(i:(i-1)+(M/2),j:(j-1)+(N/3))=im2bw(a1(i:(i-1)+(M/2),j:(j-1)+(N/3)),(th2(z)/255));
        z=z+1;
    end
end

figure,ShowImage(mat2gray(b3),'Binary Image');
title('Image Segmented using Otsu Threshold','color','blue','fontsize',4); 
