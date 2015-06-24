clc
//Example 16.10
s=poly(0,'s')
h=syslin('c',(10*s)/((1+s)*(s^2+20*s+10000)))
disp(h)
fmin=0.01
fmax=10^4
scf(1);clf;
//Calculate Bode plot
bode(h,fmin,fmax)

