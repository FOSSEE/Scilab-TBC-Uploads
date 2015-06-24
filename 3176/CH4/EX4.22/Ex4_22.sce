//Ex4_22
// Image Enhancement using Homomorphic Filtering
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

function[H]=filter(type1,M,N,D0,low,high,c)//lowpassfilter is used to filter an image .
    u=0:(M-1);
    v=0:(N-1);
    idx=find(u>M/2);
    u(idx)=u(idx)-M;
    idy=find(v>N/2);
    v(idy)=v(idy)-N;
    [U,V]=meshgrid(v,u); // Generate 2-d matrix from 1-d matrix
    D=sqrt(U.^2+V.^2);  // distnace calculation
    select type1         
        case'Homomorphic'then
        H=((high-low).*(1-(exp(-c*(D.^2)./(D0^2)))))+low;
    else
        disp('Unknownfiltertype.')
    end
endfunction


///////////////////////////////////   Main Programm   ////////////////////////////////

a=imread("Ex4_22.tif");
//gray=rgb2gray(a);
gray=im2double(imresize(a,[540 540]));

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in);
low=0.25;
high=2;
c=1;
D0=80;
filt=filter('Homomorphic',M,N,D0,low,high,c); // User Define Function which generate Filter Mask

n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
//Image_Enhance = hiseq(a);

Image_filter=mat2gray(Image_filter);
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Specific Cut-Off Frequency','color','blue','fontsize',4);








