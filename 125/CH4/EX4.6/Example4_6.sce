//Caption:Scilab code  to intergchange phase information between two images
//Example4.6
//page 174-175
clc;
close;
a = imread('E:\DIP_JAYARAMAN\Chapter4\lena.png');  //SIVP toolbox
b = imread('E:\DIP_JAYARAMAN\Chapter4\baboon.png');
a = rgb2gray(a);
b = rgb2gray(b);
a = imresize(a,0.5);
b = imresize(b,0.5);
figure(1)
ShowImage(a,'Original lena Image');    //IPD toolbox
title('Original lena Image'); 
figure(2)
ShowImage(b,'Original baboon Image');
title('Original baboon Image')
ffta = fft2d(double(a));
fftb = fft2d(double(b));
mag_a = abs(ffta);
mag_b = abs(fftb);
ph_a = atan(imag(ffta),real(ffta));
ph_b = atan(imag(fftb),real(fftb));
newfft_a = mag_a.*(exp(%i*ph_b));
newfft_b = mag_b.*(exp(%i*ph_a));
rec_a = ifft2d(newfft_a);
rec_b = ifft2d(newfft_b);
figure(3)
ShowImage(uint8(rec_a),'lena Image after phase reversal');
title('lena Image after phase reversal')
figure(4)
ShowImage(uint8(rec_b),'baboon Image after phase reversal');
title('baboon Image after phase reversal')