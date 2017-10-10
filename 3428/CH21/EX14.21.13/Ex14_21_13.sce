//Section-14,Example-1,Page no.-PC.21
//To calculate collision number,collision frequency and mean free path for oxygen at 298K and 1 atm pressure.
clc;
M_w=32*10^-3                  //(kg/mol) molecular weight of oxygen
N_A=6.023*10^23              //  Avogadro no.(mol^-1)
M=((M_w)/(N_A))
disp(M,'Mass of one oxygen molecule(kg)')
//N=P/(R*T)
P=1          //atm
R=0.0821                //litreatmK^-1mol^-1
T=298              //K
N=(P*N_A*10^3)/(R*T)
disp(N,'No.of O_2 molecules per m^3')
R_1=8.314                      //kgm^2K^-1mol^-1
m=32*10^-3                    //kgmol^-1
v_avg=sqrt((8*R_1*T)/(%pi*m))           //ms^-1
disp(v_avg,'Average velocity of O2 molecule(ms^-1)')
sig=3.6*10^-10              //m
Z_1=sqrt(2)*%pi*(sig)^2*v_avg*N 
disp(Z_1,'Collision number(collisions per sec)')
Z_11=(1/2)*(Z_1*N)
disp(Z_11,'Collision frequency(collisions s^-1 m^-3)')
lm=v_avg/Z_1
disp(lm,'Mean free path(m)')






