//Example No. 6.14.1
clc;
clear;
close;
format('v',6);
SLL=19.1;//dB(Side Lobe Level)
//d=lambda/2;(spacing)
dBYlambda=1/2;//(Spacing/wavelength)
n=4;//(no. of elements)
r=round(10^(SLL/20));//(ratio of main lobe to side lobe)
m=n-1;//(degree )
//T3(x0)=r=4*x0^3-3*x0;
x0=roots([4 0 -3 -r]);//(Coefficient)
x0=x0(1);//taking real value(Coefficient)
//E4(z)=T3(x)=4*x^3-3*x=4*a1*z^3-3*a1*z+a0*z
//4*a1*z^3=4*x^3 where z^3=(x/x0)^3
a1=4*x0^3/4;//(Coefficient)
//a0*z-3*z*a1=-3*x
a0=(3/x0*a1-3)*x0;//(Coefficient)
disp(a0,a1,"Coefficients of array polynomial a1 & a0 are : ");
disp(a0/a1,a1/a1,"Relative current amplitudes are :");
