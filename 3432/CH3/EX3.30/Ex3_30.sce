//Example 3.30
//Stability versus two parameter ranges
xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Stability versus parameter ranges

num=[1 0];//zeros
den=[-1 -2];//poles
Ns=poly(num,'s','coeff');
Ds=poly(den,'s','roots'); 
Gfs=syslin('c',Ns/Ds); //forward transfer function block

num=[1];
den=[1 0];
Ns=poly(num,'s','coeff');
Ds=poly(den,'s','coeff');
Hs=syslin('c',Ns/Ds); //feedback transfer function block

//check the step responses with the forward, path gain K=7.5, 13, 25
t=0:0.02:12;
i=1;
num=[5 10;1 1;0 1];

for i=1:3
    den=[0 1];
    Ns=poly(num(i,:),'s','coeff');
    Ds=poly(den,'s','coeff');
    Gcs=syslin('c',Ns/Ds); //Controller transfer function block
    sysT= Gcs * Gfs /. Hs;
    yt(i,:)=csim('step',t,sysT);
    i=i+1;
end

//Transient response for different values of K and Ki
plot(t',yt')
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response for the system",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('y(t)','fontsize',2)
xset("font",1,1)
xstring(1.4,1.05,'$K=10,K_I=5$');
xstring(3.3,0.8,'$K=1,K_I=1$');
xstring(5.5,0.35,'$K=1,K_I=0$') 
//------------------------------------------------------------------
