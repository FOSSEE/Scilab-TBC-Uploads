//Example No. 10.5.3
clc;
clear;
close;
format('v',6);
HPBW=39;//degree(HPBW)
alfa=12.5;//degree(Pitch angle)
f=475;//MHz(Frequency)
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^6);//m(Wavelength)
C=lambda;//m(Circumference)
disp("Part (i)");
//it is in axial mode as 3/4*lambda<C<4/3*lambda
S=C*tand(alfa);//meter(Spacing)
N=52^2/HPBW^2/(S/lambda)/(C/lambda)^2;//turns
disp(round(N),"Number of turns : ");
disp("Part (ii)");
N=round(N);//turns
Do=15*(C/lambda)^2*N*(S/lambda);//unitless(Directivity)
Do_dB=10*log10(Do);//dB(Directivity)
disp(Do_dB,"Directivity in decibels : ");
disp("Part (iii)");
AR=(2*N+1)/2/N;//axial ratio
disp(AR,"Axial ratio : ");
disp("Part (iv)");
//3/4*lambda<C<4/3*lambda
lambda1=C/(3/4);//meter(Wavelength)
lambda2=C/(4/3);//meter(Wavelength)
f1=c/lambda1;//Hz(Frequency)
f2=c/lambda2;//Hz(Frequency)
disp("Frequency range is "+string(f1/10^6)+" MHz to "+string(f2/10^6)+" MHz.")
disp("Part (v)");
//At  design frequency
Rin=140*C/lambda;//Ω(Input impedence)
disp(Rin,"At design frequency, Input impedence in Ω is : ");
//3/4*lambda<C<4/3*lambda
//At high frequency end
Rin=140*C/lambda2;//Ω(Input impedence)
disp(Rin,"At high frequency end, Input impedence in Ω is : ");
//At low frequency end
Rin=140*C/lambda1;//Ω(Input impedence)
disp(Rin,"At low frequency end, Input impedence in Ω is : ");
