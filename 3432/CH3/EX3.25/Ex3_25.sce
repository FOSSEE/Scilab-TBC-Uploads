//Example 3.25 Aircraft Response
xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//(a)impulse response of aircraft

//Transfer function of aircraft
numG=[-6 1];
denG=[0 13 4 1];
Ns=30*poly(numG,'s','coeff');
Ds=poly(denG,'s','coeff');
u=-1 //impulsive elevator input of 1 degree
sysG=syslin('c',u*Ns/Ds);

//impulse response
t=0:0.02:10;
gt=csim('impuls',t,sysG);
plot(t,gt)
exec .\fig_settings.sci; //custom script for setting figure properties
title('Response of an airplanes altitude to an impulsive elevator input','fontsize',3)
xlabel('Time (sec.)','fontsize',2)
ylabel('Altitude (ft)','fontsize',2)

//final value theorem, lim s-->0 in s*G(s)
s=%s;
gt_final=horner(s*sysG,0)
disp(gt_final,"The final value of the output altitude is:")
//------------------------------------------------------------------
//(b)response specifications

//damping factor (xi) and natural frequency (wn)
[wn xi]=damp(sysG);
wn=wn(2);//natural frequency (wn)
xi=xi(2);//damping factor
disp(wn,xi,"Damping factor and natural frequency (rad)...
 of the response are:")

tr=1.8/wn; //rise time
disp(tr,"Rise time (sec) of the response is:")

sigma=xi*wn
ts=4.6/sigma; //settling time
disp(ts,"Settling time (sec) of the response is:")

Mp=exp(-xi*%pi/sqrt(1-xi^2))
wd=wn*sqrt(1-xi^2);
tp=%pi/wd;
disp(tp, Mp,"Overshoot and time of overshoot (sec)...
 in the response are:")

//------------------------------------------------------------------
