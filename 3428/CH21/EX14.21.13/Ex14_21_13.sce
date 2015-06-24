//Section-14,Example-1,Page no.-PC.21
//To calculate collision number,collision frequency and mean free path for oxygen at 298K and 1 atm pressure.
clc;
M=((32*10^-3)/(6.023*10^23))
disp(M,'Mass of one oxygen molecule(kg)')
//N=P/(R*T)
N=(1*6.023*10^23*10^3)/(0.0821*298)
disp(N,'No.of O_2 molecules per m^3')
R=8.314
T=298
m=32*10^-3
v_avg=sqrt((8*R*T)/(%pi*m))
disp(v_avg,'Average velocity of O2 molecule(ms^-1)')
sig=3.6*10^-10
Z_1=sqrt(2)*pi*(sig)^2*v_avg*N
disp(Z_1,'Collision number(collisions per sec)')
Z_11=(1/2)*(Z_1*N)
disp(Z_11,'Collision frequency(collisions s^-1 m^-3)')
lm=v_avg/Z_1
disp(lm,'Mean free path(m)')






