//Ex4_14
// Futher Illustration of a Properties of a Fourier Spectrum and Phase Angle
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
a=imread("Ex4_14.tif");
mask=imread("Ex4_14_2.tif");
mask=im2double(imresize(mask,[512 512]));
//gray=rgb2gray(a);
gray=im2double(a);

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
in=fftshift(h);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
i=log(1+abs(in));

inm=mat2gray(i);
//figure,ShowImage(inm,'Center Frequency Spectrum');
//title('Center Frequency Spectrum');

phase=atand(imag(h),real(h));
phase_1=mat2gray(phase);
figure,ShowImage(phase_1,'phase Spectrum');
title('phase Spectrum','color','blue','fontsize',4);

phase_mask=atand(imag(fft2(mask)),real(fft2(mask)));
phase_2=mat2gray(phase_mask);
//figure,ShowImage(phase_2,'phase Spectrum');
//title('phase Spectrum 2');

Image_recoverd=real(ifft(phase));
Image_recoverd=mat2gray(Image_recoverd)
//figure,ShowImage(Image_recoverd,'recoverd Image');
//title('recoverd Image by only Phase');


Image_recoverd=fftshift(real(ifft(abs(h))));
Image_recoverd=mat2gray(Image_recoverd)
figure,ShowImage(Image_recoverd,'recoverd Image');
title('recoverd Image by only Spectrum','color','blue','fontsize',4);


Image_recoverd=real(ifft(fftshift((mask.*in)+phase)));
Image_recoverd=(mat2gray(Image_recoverd));
figure,ShowImage(Image_recoverd,'recoverd Image');
title('recoverd Image by Magnitude in mask and Phase','color','blue','fontsize',4);


Image_recoverd=real(ifft(fftshift(in)+abs(fft2(mask))));
Image_recoverd=(mat2gray(Image_recoverd));
figure,ShowImage(Image_recoverd,'recoverd Image');
title('recoverd Image by phase in mask and magnitude','color','blue','fontsize',4);
