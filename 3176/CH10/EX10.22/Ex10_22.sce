//Ex10_22
// Document Thresholding Using Moving Averages
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

a=imread("Ex10_22.tif");
a1=im2double(a);
figure,ShowImage(a1,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);

Threshold = CalculateOtsuThreshold(a1);
Thresh_Image=im2bw(a1,Threshold);
figure,ShowImage(Thresh_Image,'Binary Image');
title('Thresholded Image with Otsu Method','color','blue','fontsize',4);


mask=zeros(1,20);
array=[];
for i=1:M   
        if(pmodulo(i,2)==0)
            array=[array mtlb_fliplr(a1(i,:))];
        else
            array=[array a1(i,:)];
        end    
end
disp('first');
for i=1:length(array)
    for j=1:length(mask)
        if(j<length(mask)) then
            mask(j)=mask(j+1);
        else
            mask(j)=array(i);
        end           
    end
    avg(1,i)=sum(mask)/length(mask);
end
disp('Second');
len=1;
for i=1:M   
        if(pmodulo(i,2)==0)
            b(i,:)=avg(len:len+N-1);
            len=len+N;            
        else
            b(i,:)=avg(len:len+N-1);
            len=len+N;           
        end    
end
disp('Last');

b=0.5*b;
for i=1:M
    for j=1:N
        if(b(i,j)>a1(i,j)) then
            c(i,j)=0;
        else
            c(i,j)=1;
        end
    end
end
figure,ShowImage(c,'Binary Image');
title('Local Thresholding Using Moving Average','color','blue','fontsize',4);
