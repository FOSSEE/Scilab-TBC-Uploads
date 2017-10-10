clc;
clear;
E=10^4 //Electric field in V/cm
e=1.6*10^-19 //in J
epsilon_r=11.7 //in F/cm
epsilon_0=8.85*10^-14 //in F/cm

//Calculation
del_phi=sqrt((e*E)/(4*%pi*epsilon_r*epsilon_0))
xm=sqrt(e/(16*%pi*epsilon_r*epsilon_0*E))

mprintf("Schottkybarrier-lowering for Si-metal contact= %0.3f V\n",del_phi)
mprintf("maximum barrier height= %1.2e cm",xm)
