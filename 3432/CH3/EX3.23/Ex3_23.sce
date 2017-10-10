//Example 3.23 Oscillatory Time Response

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Transfer function of second order underdamped system
numH=[1 2];
denH=[5 2 1];
Ns=poly(numH,'s','coeff');
Ds=poly(denH,'s','coeff');
sysH=syslin('c',Ns/Ds);

//damping factor (xi) and natural frequency (wn)
[wn xi]=damp(sysH);
wn=wn(1);
xi=xi(1);
sigma=xi*wn;
wd=wn*sqrt(1-xi^2);

//denominator in sigma-wn form H(s)=H1(s)+H2(s)
s=%s;
p=(s+sigma)^2+wd^2
temp=polfact(Ns);
k=temp(1),zr=temp(2);
h1=(s+sigma)/p;
h2=-((s+sigma)-temp(2))*wd/p;
H1s=syslin('c',k*h1);
H2s=syslin('c',k*h2/wd);

// responses with exponential envelope
Env=syslin('c',k/(s+sigma));
t=0:0.02:10;
//impulse response
ht=csim('impuls',t,sysH);
envt=csim('impuls',t,Env);
envt_neg=csim('impuls',t,-Env);

plot(t,ht)
plot(t,envt,'r--')
plot(t,envt_neg,'r--')
exec .\fig_settings.sci; //custom script for setting figure properties
title('Impulse response of the underdamped system','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('h(t)','fontsize',2)
xset("font",1,2)
xstring(1,0.75,"$e^{-\sigma t}$",0,0)
xstring(1,-0.85,"$-e^{-\sigma t}$",0,0)
//------------------------------------------------------------------
