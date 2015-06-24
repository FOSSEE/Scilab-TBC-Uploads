//Ex5_10
//Image Bluring Due to Motion
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

gray=imread("Ex5_10.png");
gray=im2double(rgb2gray(gray));
//gray=im2double(imresize(a,0.5));
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)

a=0.1;b=0.1;T=1; // Motion and Exposure Value
for u=1:M
    for v=1:N
        H(u,v)=(T/(%pi*(u*a+v*b)))*(sin(%pi*(u*a+v*b)))*exp(-%i*%pi*(u*a+v*b));  //Motion Blure Function
    end
end

n=h.*H;//Multiply the Original Spectrum with the Degradation Function.
Image_filter=abs(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Motion Blure Image','color','blue','fontsize',4);






