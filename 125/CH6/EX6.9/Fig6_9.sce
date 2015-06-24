//Caption:Scilab code performs Pseudo inverse filtering 
//Degrade the image by means of a known blur and white noise
//The image is degraded as well as corrupted by noise
//Apply Pseudo inverse filter to restore the  image
//Fig6.9
//page 333
clc;
close;
x =imread('E:\DIP_JAYARAMAN\Chapter6\flower2.jpg');
x=double(rgb2gray(x));
[M N]=size(x);
h = zeros(M,N);
for i = 1:11
    for j = 1:11
        h(i,j) = 1/121;
    end
end
mask_b = ones(11,11)/121;
[m1,n1] = size(mask_b);
Thr_Freq = 0.2;
freqx = fft2d(x); //Fourier transform of input image
freqh = fft2d(h);//Fourier transform of degradation
y = real(ifft2d(freqh.*freqx))+25*rand(M,N,'normal');
freqy = fft2d(y);
psf=zeros(M,N); 
psf(M/2+1-(m1-1)/2:M/2+1+(m1-1)/2,N/2+1-(n1-1)/2:N/2+1+(n1-1)/2) = mask_b;
psf = fftshift(psf);
freq_res = fft2d(psf);
Inv_filt = freq_res./((abs(freq_res)).^2+Thr_Freq);
z = real(ifft2d(freqy.*Inv_filt));
x = uint8(x);
y = uint8(y);
z = uint8(z)
ShowImage(x,'Original Image')
title('Original Image')
figure
ShowImage(y,'Degraded+noise Image')
title('Degraded+noise Image')
figure
ShowImage(z,'Restored Image')
title('Restored Image')