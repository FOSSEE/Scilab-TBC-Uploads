//Caption:Scilab code to Perform median filtering of colour image
//Fig6.23(a)
//page 353
clc;
close;
a=imread('E:\DIP_JAYARAMAN\Chapter6\peppers.png'); //SIVP toolbox
N=input('enter the window size');
b=imresize(a,[256,256]);
b=imnoise(b,'salt & pepper',.1);
[m n]=size(b);
R=b(:,:,1); 
G=b(:,:,2);
B=b(:,:,3);
Out_R=Func_medianall(R,N);//Applying Median filter to ‘R’ plane
Out_G=Func_medianall(G,N);//Applying Median filter to ‘G’ plane
Out_B=Func_medianall(B,N);//Applying Median filter to ‘B’ plane
Out_Image(:,:,1)=Out_R;
Out_Image(:,:,2)=Out_G;
Out_Image(:,:,3)=Out_B;
b = uint8(b);
Out_Image = uint8(Out_Image);
//ShowColorImage(b,'noise added')
//title('noise added')
figure
ShowColorImage(Out_Image,'3x3 median filtered')
title('3x3 median filtered') 