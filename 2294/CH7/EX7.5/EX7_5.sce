//Example 7.5.2
//Find the laplace transform of the following signal.
clc;
close;
t=-10:.01:10;
for i=1:length(t)
    if t(i)>=0 then
        x(i)=1;
    else
        x(i)=0;
    end
end
s=%s;
numfs=1;
denfs=s;
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
xtitle('solution');
xgrid;
xs2jpg(0, 'EX7_5-plot-a.jpg');
