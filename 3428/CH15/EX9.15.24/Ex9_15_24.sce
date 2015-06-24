//Section-9,Example-1,Page no.-E.51
//To calculate the ionic mobility of K+ ions.
clc;
l=0.04
t=4000
I=6*10^-3
A=0.3*10^-4
k=1.0
v=l/t             //Velocity of the ion(ms^-1)
F_s=I/(A*k)          //Field strength(Vm^-1)
I_mo=v/F_s
disp(I_mo,'Ionic mobility of K+ ion(m^2V^-1s^-1)')

