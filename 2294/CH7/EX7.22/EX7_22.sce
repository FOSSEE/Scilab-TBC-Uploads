//Example 7.22
//Find the laplace transform .
clc;
t=-10:.01:10;
for i=1:length(t)
    y(i)=exp(-t(i))-2*exp(-2*t(i))+exp(-3*t(i));
    x(i)=exp(-0.5*t(i));
end
s=%s;
numfs1=1;
denfs1=s+0.5;
fs=syslin('c',numfs1/denfs1);
numfs2=2;
denfs2=(s+1)*(s+2)*(s+3);
fs1=syslin('c',numfs2/denfs2);
hs=fs1/fs;
hs1=csim('impulse',t,hs);
subplot(3,1,1);
plot2d(t,x,2);
xtitle('Phrasing');
xgrid;
subplot(3,1,2);
plot2d(t,y,3);
xtitle('Phrasing');
xgrid;
subplot(3,1,3);
plot2d(t,hs1,1);
xtitle('Solution');
xgrid;
disp(fs,'fs=:');
disp(fs1,'fs1=:');
disp(hs,'hs=:');
