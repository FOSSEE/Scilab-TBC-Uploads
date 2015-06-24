//caption:determine_Wn,Wd,zeta_and_steady_state_error
//example 12_13
//page 527
syms Kp K Kd T 
s=%s;
//exec series.sce;
//exec parallel.sce;
a=(Kp+s*Kd)*K
b=1/(s*(s*T+1))
G=series(a,b)
H=1;
er=1/(1+G*H)
disp(er,"E(s)/R(s)=");
R=1/s^2
E=R*er
ess=limit(s*E,s,0)
disp(ess,"steady state error,ess=")
