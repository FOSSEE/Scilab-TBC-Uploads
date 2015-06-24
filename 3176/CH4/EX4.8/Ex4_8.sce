//Ex4_8
// Illustration of Jaggies in Image Shrinking
//Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods


clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).
a=imread("Ex4_8.tif");
figure,ShowImage(a,'Gray Image');
title('Original Image [1024 1024]','color','blue','fontsize',4);
//[M,N]=size(a);
b=imresize(a,[256 256],'bicubic');
//figure,ShowImage(b,'Gray Image');
//title('Resize Image [256 256] with Bicubic Interpolation');
[M,N]=size(b);
d=[];
f=[]
for i=1:N
    temp=b(:,i);      
    d=[d temp temp temp temp];  
end
for i=1:M
    temp=d(i,:);      
    f=[f;temp;temp;temp;temp];  
end
figure,ShowImage(f,'Gray Image');
title('Resize Image [1024 1024] with Pixels Replication','color','blue','fontsize',4);


///////////////////////////  Averaging Approach to Reduce Jaggies Effect  ////////////////
filt=fspecial('average',5);
a_filter=imfilter(a,filt);
b=imresize(a_filter,[256 256],'bicubic');
//figure,ShowImage(b,'Gray Image');
//title('Resize Image [256 256] with Bicubic Interpolation');
[M,N]=size(b);
d=[];
f=[]
for i=1:N
    temp=b(:,i);      
    d=[d temp temp temp temp];  
end
for i=1:M
    temp=d(i,:);      
    f=[f;temp;temp;temp;temp];  
end
figure,ShowImage(f,'Gray Image');
title('Resize Image [1024 1024] with Pixels Replication After Averaging','color','blue','fontsize',4);

