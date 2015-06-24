//caption:determine_Wn,Wd,Tp,zeta_and_steady_state_error
//example 11_14
//page 484
s=%s;
syms t;
G=20/((s+5)*(s+1))
H=1;
CL=G/.H
disp(CL,"C(s)/R(s)=")
b=denom(CL)
disp(0,b,"=","the char. eq is:",)
Wn=sqrt(25)//natural_frequency
//2*zeta*Wn=6
zeta=6/(2*Wn);//damping ratio
d=zeta*Wn;//damping_factor
z=sqrt(1-zeta^2);
Wd=Wn*z;//damped_frequency_of_oscillation
Mp=exp((-zeta*%pi)/z)*100;//%_max.peak_overshoot
Tp=%pi/Wd//peak time
tfirst=(2*%pi)/Wd   //time for first under shoot
period=(2*%pi)/Wd    //period of oscillation
ts=4/(zeta*Wn)//settling time
N=(Wd/(2*%pi))*ts//no. of oscillations completed before reaching steady state
disp(Wn,"natural frequency=");
disp(zeta,"damping ratio=");
disp(Wd,"damped frequency of oscillation=");
disp(Tp,"peak time=");
disp(Mp,"%_max.peak overshoot=");
disp(tfirst,"time for first under shoot=");
disp(period,"period of oscillation=");
disp(N,"no. of oscillations completed before reaching steady state=");