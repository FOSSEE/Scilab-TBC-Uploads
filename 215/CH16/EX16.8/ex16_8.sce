clc
//Example 16.8
//From figure 16.26
disp('Writing the expression for voltage gain')
disp('Vout/Vin=4000*(-1/200)*(5000*10^8/s)/((5000+10^8/s)*(5000+10^6/20s))')
//On simplification
s=poly(0,'s')
h=syslin('c',(-2*s)/((1+s/10)*(1+s/20000)))
disp(h)
fmin=0.01
fmax=10^7
scf(1);clf;
bode(h,fmin,fmax)

