//Example 10.4
//3 stage decimation filter design
clc;
clear;
close;

Fs1=3072000;                  //original signal sampling frequency
Fs2=48000;                //new sampling frequency
df=64;                    //decimation factor of filter
fp1=24000;                   //pass band edge frequency
fs=32000;                   //stop band edge freqeucny
tw=2000;                    //transition width
pbdev=0.00345;              //pass band deviation
sbatt=80;                   //stop band attenuation in decibel
fp2=20000;

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
df1=8;                    //decimation factor for 1st stage
F1=Fs1;                     //input sampling fequency
F2=F1/df1;                //output sampling frequency
fs1=F2-Fs1/(2*df);        //stop band edge frequency
df1=(fs1-fp1)/Fs1;
N1=ceil(D/df1-f+1);
disp(N1,"Order of filter for 1st stage is ");
n1=N1*F1;

//2nd stage design
df2=4;                    //decimation factor for 2nd stage
F1=F2;                      //input sampling fequency
F2=F1/df2;                //output sampling frequency
fs1=F2-Fs1/(2*df);         //stop band edge frequency
df2=(fs1-fp1)/F1;
N2=ceil(D/df2-f+1);
disp(N2,"Order of filter for 2nd stage is ");
n2=N2*F1;

//3rd stage design
df3=2;                    //decimation factor for 3rd stage
F1=F2;                      //input sampling fequency
F2=F1/df3;                //output sampling frequency
fs1=F2-Fs1/(2*df);         //stop band edge frequency
df3=(fp1-fp2)/F1;
N3=ceil(D/df3-f+1);
disp(N3,"Order of filter for 3rd stage is ");
n3=N3*F1;

N=n1+n2+n3;
disp(N,"Number of multiplications required is: ");
