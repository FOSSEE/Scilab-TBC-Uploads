clear     
clc
disp('Exa-3.2');
I=120;r=0.1*10^-9;Eev=2.3   //I-intensity in W/m^2 r in m & E in electron volt
A=%pi*r^2;K=1.6*10^-19;     // A=area and K is conversion factor from ev to joules
t= Eev*K/(I*A);            //time interval
printf('The value of time interval was found out to be %.1f sec',t);
