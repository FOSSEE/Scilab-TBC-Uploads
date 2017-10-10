

s=%s; // first create a variable
num=9;
den=9+4*s+s^2;
TF=syslin('c',num,den)

t=linspace(0,5,500);
imp_res=csim('imp',t,TF);
plot(t,imp_res)
xgrid()
xtitle('Impulse response','time','response');
