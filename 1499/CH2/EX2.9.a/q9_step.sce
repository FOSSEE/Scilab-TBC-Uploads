

s=%s; // first create a variable
Wn=%Wn;
Wd=%Wd;


num=2*s+1;
den=s^2;
TF=syslin('c',num,den)



t=linspace(0,5,500);
step_res=csim('step',t,TF);
plot(t,step_res)
xgrid()
xtitle('Step response','time','response');
