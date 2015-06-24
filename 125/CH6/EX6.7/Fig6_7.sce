//Caption:Scilab code performs inverse filtering 
//Degrade the image by means of a known blur and white noise
//The image is degraded as well as corrupted by noise
//Apply inverse filter to restore the  image
//Fig6.7
//page 332
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
sigma = sqrt(4*10^(-7));
freqx = fft2d(x); //Fourier transform of input image
freqh = fft2d(h);//Fourier transform of degradation
y = real(ifft2d(freqh.*freqx))+10*rand(M,N,'normal');
freqy = fft2d(y);
powfreqx = freqx.^2/(M*N);
alpha = 0.5; //Indicates inverse filter 
freqg = ((freqh.')').*abs(powfreqx)./(abs(freqh.^2).*abs(powfreqx)+alpha*sigma^2);
Resfreqx = freqg.*freqy;
Resa = real(ifft2d(Resfreqx));
x = uint8(x);
y = uint8(y);
Resa = uint8(Resa)
ShowImage(x,'Original Image')
title('Original Image')
figure
ShowImage(y,'Degraded+noise Image')
title('Degraded+noise Image')
figure
ShowImage(Resa,'Restored Image')
title('Restored Image')