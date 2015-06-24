//Example 10.6
//3 stage interpolation filter design
clc;
clear;
close;

Fs1=48000;                  //original signal sampling frequency
Fs2=3072000;                //new sampling frequency
intf=64;                    //interpolation factor of filter
fp=20000;                   //pass band edge frequency
fs=32000;                   //stop band edge freqeucny
tw=2000;                    //transition width
pbdev=0.00345;              //pass band deviation
sbatt=80;                   //stop band attenuation in decibel

//filter coefficients required for order of filter
a1=0.005309;
a2=0.07114;
a3=-0.4761;
a4=-0.00266;
a5=-0.5941;
a6=-0.4278;

dp=pbdev/3;                 //pass band ripple for each stage;
ds=10^-(sbatt/20);          //stop band attenuation for each stage
f=11.01217+0.51244*(log10(dp)-log10(ds));
D={log10(ds)*[a1*log10(dp^2)+a2*[log10(dp)]+a3]}+[a4*log10(dp^2)+a5*[log10(dp)]+a6];

//1st stage design
intf1=2;                    //interpolation factor for 1st stage
F1=Fs1;                     //input sampling fequency
F2=F1*intf1;                //output sampling frequency
fs1=F1-Fs2/(2*intf);        //stop band edge frequency
df1=(fs1-fp)/F2;
N1=ceil(D/df1-f+1);
disp(N1,"Order of filter for 1st stage is ");
n1=N1*F2;

//2nd stage design
intf2=4;                    //interpolation factor for 2nd stage
F1=F2;                      //input sampling fequency
F2=F1*intf2;                //output sampling frequency
fs2=F1-Fs2/(2*intf);        //stop band edge frequency
df2=(fs2-fs1)/F2;
N2=ceil(D/df2-f+1);
disp(N2,"Order of filter for 2nd stage is ");
n2=N2*F2;

//3rd stage design
intf3=8;                    //interpolation factor for 3rd stage
F1=F2;                      //input sampling fequency
F2=F1*intf3;                //output sampling frequency
fs3=F1-Fs2/(2*intf);        //stop band edge frequency
df3=(fs3-fs1)/Fs2;
N3=ceil(D/df3-f+1);
disp(N3,"Order of filter for 3rd stage is ");
n3=N3*F2;

N=n1+n2+n3;
disp(N,"Number of multiplications required is: ");
