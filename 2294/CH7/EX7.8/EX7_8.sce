//Example7.8
//Find the laplace transform .
clc;
s=%s;t=-10:10;
numfs=2*s;
denfs=s^2-8;
fs=syslin('c',numfs/denfs);
fs1=csim('impulse',t,fs);
f=scf(0);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
xs2jpg(0, 'problem110-plot-a.jpg')
disp(fs,'fs=');
