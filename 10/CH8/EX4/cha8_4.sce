Lw=30;R=15;Ia=3;V=45;

Tow=Lw/R

t1=0.7*Tow

t0=0:0.1:t1;
 
t=0;
 
a=integrate('45*(-3+6*%e^(-x/2))','x',t,t0)
 
 Energy=(1/2)*Lw*Ia^2
 
 ProEnergy=(a/Energy)*100