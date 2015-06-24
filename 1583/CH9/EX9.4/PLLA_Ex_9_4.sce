clc
close
//chapter 9: Stability Analysis
//Example 9.4 page no 363
//given
clear
N=2
Kv=0.83*10^3//DC gain
B=1250//closed loop bandwidth
wn=1.27*10^3
wL=wn^2/Kv//corner frequency
s=poly(0,'s')
h=syslin('c',(1/((s^2/wn^2)+0.9*s/wn+1)))
clf();bode(h,1,1000);
