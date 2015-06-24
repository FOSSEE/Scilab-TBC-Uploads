//Example 5.1
//Obtain the Bode plot
clc;
s=%s;
H=syslin('c',2*10^4/(s^2+100*s+10^4));
bode(H,0.1,10000);
funcprot(0);