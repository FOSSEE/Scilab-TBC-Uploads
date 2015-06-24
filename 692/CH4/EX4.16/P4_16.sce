//EXAMPLE 4.16
//Design analog butterworth High pass filter
clc;
clear;
wp=4000;
ws=1000;
ap=0.1;
as=40;

Ap=1; // assumption
As=(2*%pi*wp)*Ap/(2*%pi*ws);

N=ceil(log10(sqrt((10^(0.1* as)-1)/(10^(0.1*ap)-1)))/log10(As/Ap));
disp(N,'order of the filter is :');

Ac = As/((10^(0.1*as)-1)^(1/(N*2)));
disp(Ac,'cutoff frequency = ')

//[hs,pole,zero,gain]=analpf(N,'butt',Ac);

s=%s;
hs=1/((s + 1)*(s^2 + 0.61803*s + 1)*(s^2 + 1.61803*s + 1));
Hs=horner(hs,s/Ac);
H1 = numer(Hs)/0.0976514;
H2 = denom(Hs)/0.0976514;
disp(H1/H2,'the low pass transfer function is,HLP(s) = ');
Hs=horner(hs,Ac/s);
H1 = numer(Hs);
H2 = denom(Hs);
disp(H1/H2,'the High pass transfer function is,HHP(s) = ');
