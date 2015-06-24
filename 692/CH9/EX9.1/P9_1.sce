//EXAMPLE 9.1
//pass band & stop band ripple
clc;
clear;
ap=0.1;//peak passband ripple in dB
as=35;//min. stopband attenuation in dB

//calculation of peak ripple values
dp=1-10^-(ap/20);
disp(dp,'dp = ');
ds=10^-(as/20);
disp(ds,'ds = ');
