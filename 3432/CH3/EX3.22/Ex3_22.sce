//Example 3.22 Response Versus Pole Locations, Real Roots

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Transfer function
numH=[1 2];
denH=[2 3 1];
Ns=poly(numH,'s','coeff');
Ds=poly(denH,'s','coeff');
sysH=syslin('c',Ns/Ds);

//Pole-zero locations
//Partial fraction method to see the effect of sperated poles
temp=polfact(Ds);
p1s=temp(2);
p2s=temp(3);

//residues at poles
r1=residu(Ns,p1s,p2s);
r2=residu(Ns,p2s,p1s);

//Note that - H1(s)+H2(s)=H(s)
H1s=syslin('c',r1/p1s);
H2s=syslin('c',r2/p2s);

//impulse response of the H1(s), H2(s) and H(s)
t=0:0.02:10;
h1=csim('impuls',t,H1s);
h2=csim('impuls',t,H2s);
h=csim('impuls',t,sysH);
figure, 
plot(t,h1,'r--',t,h2,'m-.', t, h, 'b')
plot(t,h2,'m-.')
plot(t,h)

exec .\fig_settings.sci; //custom script for setting figure properties
title(['impulse response of the system and subsystems with...
 independent poles.';'(h1(t) is faster than h2(t))'],'fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('h(t), h1(t), h2(t)','fontsize',2)
h=legend('h1(t) with pole at -2','h2(t) with pole at -1'...
,'h(t)=h1(t)+h2(t)')
h.legend_location = "in_upper_right"
h.fill_mode='off'
//------------------------------------------------------------------
