//Scilab Code for Example 2.3 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms s0;
s=%s;
I=(s+8)/(s^2+6*s+13)
i=pfss(s*I)
disp(i(1),"sF(s)(1)=")
disp(i(2),"sF(s)(2)=")
I1=(2*s0-13)/(s0^2+6*s0+13);
I2=1;
Io1=limit(I1,s0,10^8);
Io2=limit(I2,s0,10^8);
Ix=2-((25*s0+26)/(s0^2+6*s0+13));
f0=(Io1)+(Io2);
f0_dash=limit(Ix,s0,10^8);
disp(f0,'INITIAL VALUE OF f(t) i.e. f(0)=');
disp(abs(f0_dash),'INITIAL VALUE OF f(t) i.e. f''(0)=');
