//Anti Imaging Filter considerations
Ap=0.5;//passband attenuation
fp=20;//passband edge frequency
As=60;//stopband attenuation
S=42.1;
fs=S-fp;//stopband edge frequency
e=sqrt(10^(0.1*Ap)-1);
e1=sqrt(10^(0.1*As)-1);
n=(log10(e1/e))/(log10(fs/fp));
n=ceil(n)//design of nth order butworth filter
//(b)Assuming Zero-order hold sampling
S1=176.4;
fs1=S1-fp;
Ap=0.316;
e2=sqrt(10^(0.1*Ap)-1);
n1=(log10(e1/e2))/(log(fs1/fp));//new order of butworth filter
n1=ceil(n1)
f=0:100;
x=abs(sinc(f*%pi/S));
f1=0:500;
x1=abs(sinc(f1*%pi/S1));
a=gca();
subplot(211);
plot2d(f,x);
xtitle("spectra under normal sampling condition","f(kHZ)","sinc(f/s1)");
subplot(212);
plot2d(f1,x1);
xtitle("spectra under over sampling condition","f(kHZ)","sinc(f/s1)");