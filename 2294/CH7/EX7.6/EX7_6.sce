//Example 7.6
//Find the laplace transform 
clc;
t=-5:.05:5;
w=2*%pi;
x=cos(w*t);
s=%s;
numfs=s;
denfs=s^2+w^2;
fs=syslin('c',numfs/denfs);
disp(fs);
fs1=csim('impulse',t,fs);
f=scf(0);
subplot(2,1,1);
plot2d(t,x,2);
xtitle('Phrasing');
xgrid;
subplot(2,1,2);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
xs2jpg(0, 'EX7_6-plot-a.jpg');

