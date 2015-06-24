//Example 7.7.1
//Find the laplace transform of the following.
clc;
close;
syms t,;
 x=1;
 a=2;c=1;
 s=a+c*%i;
X=integrate((exp(-s*t)),'t',2,%inf);
 disp(X);
//Example 7.7.2
//Find the laplace transform .
clc;
t=-10:.01:10;
for i=1:length(t)
    if t(i)>=0 then
        x(i)=(t(i)^2)*exp(-2*t(i));
    else
        x(i)=0;
    end
end
s=%s;
numfs=2;
denfs=(s+2)^3;
fs=syslin('c',numfs/denfs);
fs1=csim('impulse',t,fs);
disp(fs);
f=scf(0);
subplot(2,1,1);
plot2d(t,x,2);
xtitle('Phrasing');
xgrid;
subplot(2,1,2);
plot2d(t,fs1,1);
xtitle('Solution');
xgrid;
xs2jpg(0, 'EX7_7_2-plot-a.jpg');



