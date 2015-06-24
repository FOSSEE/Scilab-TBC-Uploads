//Ex4_15
// Obtaining a Frequency domain Filter from a Small Spatial Mask
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

function[H]=sobelfilter(mask_pad)//lowpassfilter is used to filter an image.
    x=fft2(mask_pad);
    [nr nc]=size(mask_pad);
    x_real=real(x);
    x_imag=imag(x);
    z=zeros(nr,nc)+%i*x_imag
    H=fftshift(z);
    y=log(1+abs(H));    
    y=mat2gray(y)
    figure,ShowImage(y,'Frequency Spectrum');
    title('Frequency Spectrum','color','blue','fontsize',4);       
endfunction




a=imread("Ex4_15.tif");
gray=im2double(a);
mask=[-1 0 1;-2 0 2;-1 0 1];
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
gray_pad=zeros(M+2,N+2);   // Zero Padding
mask_pad=zeros(M+2,N+2);   // Zero Padding
gray_pad(1:M,1:N)=gray(1:$,1:$);
mask_pad(1:3,1:3)=mask(1:$,1:$);

h=fft2(gray_pad);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix

in=fftshift(h);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
i=log(1+abs(in));
inm=mat2gray(i)
figure,ShowImage(inm,'Frequency Spectrum');
title('Frequency Spectrum','color','blue','fontsize',4);

///////////////////////////// Filtering Domain Filtering   ///////////////////////
filt=sobelfilter(mask_pad); // Function which generate Filter Mask 
n=filt.*in;//Multiply the Original Spectrum with the Filter Mask.
n=fftshift(n);
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image in Frequency Domain','color','blue','fontsize',4);

///////////////////////////// Spatial Domain Filtering   ///////////////////////

imf = imfilter(a,mask);
//imf=1*(imf.^1.2);
[r c]=find(imf==0 | imf<=110);
        for i=1:length(r)
                imf(r(i),c(i)) = 125; 
        end
figure,ShowImage(imf,'Filtered Image');
title('Filtered Image in Spatial Domain','color','blue','fontsize',4);
