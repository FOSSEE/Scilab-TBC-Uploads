//Example7.16.1
//Find the laplace transform .
clc;
s=%s;t=-5:5;
numfs=s^2+4*s+3;
denfs=(s^2+4*s+5)^2;
fs=syslin('c',numfs/denfs);
fs1=csim('impulse',t,fs);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
disp(fs);
//Example7.16.2
//Find the laplace transform .
clc;
s=%s;t=-5:5;
numfs=s+3;
denfs=(s^2+6*s+10);
fs=syslin('c',numfs/denfs);
fs1=csim('impulse',t,fs);
f=scf(0);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
xs2jpg(0, 'EX7_16_2-plot-a.jpg');
disp(fs);
//Example7.16.3
//Find the laplace transform .
clc;
s=%s;t=-5:5;
numfs=(s+2)^2;
denfs=(s^2+4*s+5)^2;
fs=syslin('c',numfs/denfs);
fs1=csim('impulse',t,fs);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
disp(fs);



