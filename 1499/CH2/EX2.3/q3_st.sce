

s=%s; // first create a variable
num=10;
den=10+2*s+s^2;
TF=syslin('c',num,den)

t=linspace(0,5,500);
step_res=csim('step',t,TF);
plot(t,step_res)
xgrid()
xtitle('Step response','time','response');
