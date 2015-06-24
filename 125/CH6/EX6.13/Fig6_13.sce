//Caption: Scilab code to perform wiener filtering of the corrupted image
//Fig6.13
//Page 339
close;
clc;
x = imread('E:\DIP_JAYARAMAN\Chapter6\flower2.jpg'); //SIVP toolbox
x=double(rgb2gray(x));
sigma = 50;
Gamma = 1;
alpha = 1; // It indicates Wiener filter
[M N]=size(x);
h = zeros(M,N);
for i = 1:5
    for j = 1:5
        h(i,j) = 1/25;
    end
end
Freqa = fft2d(x);
Freqh = fft2d(h);
y = real(ifft2d(Freqh.*Freqa)) //image degradation 
y = y+25*rand(M,N,"normal"); //Adding random noise with normal distribution
Freqy = fft2d(y);
Powy = abs(Freqy).^2/(M*N);
sFreqh = Freqh.*(abs(Freqh)>0)+1/Gamma*(abs(Freqh)==0);
iFreqh = 1/sFreqh;
iFreqh = iFreqh'.*(abs(Freqh)*Gamma>1)+Gamma*abs(sFreqh)*iFreqh*(abs(sFreqh)*Gamma<=1);
iFreqh = iFreqh/(max(max(abs(iFreqh))));
Powy = Powy.*(Powy>sigma^2)+sigma^2*(Powy<=sigma^2);
Freqg = iFreqh.*(Powy-sigma^2)./(Powy-(1-alpha)*sigma^2);
ResFreqa = Freqg.*Freqy;
Resa = real(ifft2d(ResFreqa));
x = uint8(x);
y = uint8(y);
Resa = uint8(Resa);
ShowImage(x,'Original Image')
title('Original Image')
figure
ShowImage(y,'Degraded Image')
title('Degraded Image')
figure
ShowImage(Resa,'Restored Image')
title('Restored Image')