//Example 7.11
//Find the laplace transform .
clc;
t=-10:.01:10;
for i=1:length(t)
    if t(i)>=0 then
        x(i)=exp(-2.*t(i))*sin(2*t(i));
    else
        x(i)=0;
    end
end
s=%s;
numfs=2;
denfs=(s+2)^2+4;
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
xs2jpg(0, 'problem109-plot-a.jpg');
