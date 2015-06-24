//Example 7_1_2
//Find the laplace transform and Roc of the following signal.
clc;
t=-10:.01:10;
a=4;
for i=1:length(t)
    if t(i)>0 then
        x(i)=0;
    else
        x(i)=-exp(-a*t(i));
    end
end
s=%s;
numfs=1;
denfs=s+.04;
fs=syslin('c',numfs/denfs);
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
disp(fs);
disp('As  real(s)<-a,so the integral converges for real(s)<-a');
xs2jpg(0, 'EX7_1_2-plot-a.jpg');
