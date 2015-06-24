//Ex4_9
// Illustration of Jaggies in Image Zooming
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
a=imread("Ex4_9.tif");
a=imcrop(a,[323 377 256 256]);
//figure,ShowImage(a,'Gray Image');
//title('Original Image [1025 1025]');
b=imresize(a,[256 256],'bicubic');
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


/////////////////////////////  Bi-linear Interpolation  ////////////////

f=imresize(a,[1024 1024],'bilinear');
figure,ShowImage(f,'Gray Image');
title('Resize Image [1024 1024] with Bi-linear Interpolation','color','blue','fontsize',4);

