//Example 10.3

clc;
clear;
close;

fs1=2048000;                  //original signal sampling frequency
fs2=64000;                    //new sampling frequency
df=32;                        //decimation factor of filter
fp=30000;                     //pass band edge frequency
fs=32000;                     //stop band edge freqeucny
tw=2000;                      //transition width
pbdev=0.01;                   //pass band deviation in decibel
sbatt=80;                     //stop band attenuation in decibel

//Calculating delta-f
df=tw/fs1;
//Calculating passband and stop band deviations
dp=10^(pbdev/20)-1;
ds=10^-(sbatt/20);

//filter coefficients required for order of filter
a1=0.005309;
a2=0.07114;
a3=-0.4761;
a4=-0.00266;
a5=-0.5941;
a6=-0.4278;

D={log10(ds)*[a1*log10(dp^2)+a2*[log10(dp)]+a3]}+[a4*log10(dp^2)+a5*[log10(dp)]+a6];
f=11.01217+0.51244*(log10(dp)-log10(ds));
N=ceil((D/df)-f+1);
disp(N,"Order of filter is ");

disp(N*fs1,"Number of multiplications required is: ")
