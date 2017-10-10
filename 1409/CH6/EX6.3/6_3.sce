clc;
//page no 6-15
//Example 6.3
//Given FM signal s(t)=10*cos((2*%pi*10^8*t)+6*sin(2*%pi*10^3*t))
//Comparing with the standard FM s(t)=Ac*cos[(2*%pi*fc*t)+mf*sin(2*%pi*10^3*t)]
mf=6;
FoM=(3/2)*mf^2
disp(FoM,'Figure of merit=');
