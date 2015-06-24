//Caption:calculate_Wn,zeta,Wd,tp,Mp
//example 6.10.5
//page 174
//given G(s)=20/(s+1)*(s+2)
clc;
s=%s;
G=syslin('c',[20/((s+1)*(s+5))])//G(s):transfer function in forward path
H=1;//backward path transfer function
a=G/.H //closed loop transfer function
b=denom(a)
c=coeff(b)
//Wn^2=c(1,1)
Wn=sqrt(c(1,1))//natural frequency
disp(Wn,"natural frequency,Wn=")
//2*zeta*Wn=c(1,2)
zeta=c(1,2)/(2*Wn)//damping ratio
disp(zeta,"damping ratio,zeta=")
Wd=Wn*sqrt(1-zeta^2)//damped frequency
disp(Wd,"damping ratio,Wd=")
Tp=%pi/Wd//peak time
disp(Tp,"peak time,Tp=")
Mp=(exp(-(zeta*%pi)/sqrt(1-zeta^2)))*100//max. overshoot
disp(Mp,"max overshoot,Mp=")
t=(2*%pi)/(Wn*sqrt(1-zeta^2))//period of oscillation
disp(t,'time at which first overshoot occurs=')
disp(t,"period of oscillation,t=")
ts=4/(zeta*Wn)//settling time
disp(ts,"settling time,ts=")
N=Wd/(2*%pi)*ts//no. of oscillations completed before reaching steady state
disp(N,"no. of oscillations completed before reaching steady state,N=")