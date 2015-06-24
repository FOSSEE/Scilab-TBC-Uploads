//Ex4_13
//The 2-D Fourier Spectrum of a Simple Function
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
a=imread("Ex4_13_1.tif");
a=imresize(a,0.5);
//gray=rgb2gray(a);
gray=im2double(a);

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h1=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
figure,ShowImage(mat2gray(abs(h1)),'Frequency spectrum');
title('Frequency spectrum','color','blue','fontsize',4);

in=fftshift(h1);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
figure,ShowImage(mat2gray(abs(in)),'Frequency spectrum');
title('Centred Frequency spectrum','color','blue','fontsize',4);

i=log(1+abs(in));
inm=mat2gray(i)
figure,ShowImage(inm,'Frequency Spectrum');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Frequency Spectrum','color','blue','fontsize',4);//title() is used for providing  a title to an image.

/////////////////////////// Effect of Translation   //////////////////////////////
a=imread("Ex4_13_2.png");
gray=rgb2gray(a);
gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
h2=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h2));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Frequency Spectrum','color','blue','fontsize',4);//title() is used for providing  a title to an image.

/////////////////////////// Effect of Rotation   //////////////////////////////
a=imread("Ex4_13_3.png");
gray=rgb2gray(a);
gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
h3=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h3));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');//ShowColorImage() is used to show color image, figure is command to view images in separate window.
title('Frequency Spectrum','color','blue','fontsize',4);//title() is used for providing  a title to an image.


/////////////////////////// Phase Spectrum   //////////////////////////////
phase=atand(imag(h1),real(h1));
phase_1=mat2gray(phase);
figure,ShowImage(phase_1,'phase Spectrum');
title('phase Spectrum','color','blue','fontsize',4);

phase=atand(imag(h2),real(h2));
phase_1=mat2gray(phase);
figure,ShowImage(phase_1,'phase Spectrum');
title('phase Spectrum of Translated Object','color','blue','fontsize',4);

phase=atand(imag(h3),real(h3));
phase_1=mat2gray(phase);
figure,ShowImage(phase_1,'phase Spectrum');
title('phase Spectrum of Rotated Object','color','blue','fontsize',4);
