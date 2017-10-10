//Example 3.29 
//Stability versus parameter range

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//Stability versus parameter range

numT=[-1];//zeros
denT=[1 0 -6];//poles
Ns=poly(numT,'s','roots');
Ds=poly(denT,'s','roots'); 
Gfs=syslin('c',Ns/Ds); //forward transfer function block

num=[1];
den=[1 0];
Ns=poly(num,'s','coeff');
Ds=poly(den,'s','coeff');
Hs=syslin('c',Ns/Ds); //feedback transfer function block

//check the step responses with the forward path gain K=7.5, 13, 25
t=0:0.02:12;
i=1;

for K=[7.5, 13, 25]
    sysT= (K * Gfs) /. Hs;
    yt(i,:)=csim('step',t,sysT);
    i=i+1;
end
//Step response
plot(t',yt')
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response for different values of K",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('y(t)','fontsize',2)
h=legend('K=7.5','K=13', 'K=25')
h.legend_location = "in_upper_right"
h.fill_mode='off'
//------------------------------------------------------------------
