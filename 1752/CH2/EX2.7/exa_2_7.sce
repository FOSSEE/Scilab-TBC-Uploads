//Exa 2.7
clc;
clear;
close;
//given data
k_cu=384;// in W/mK
k_s=1.75;// in W/mK
k1=k_cu;
k2=k_s;
hi=221;//  in W/m^2K
ho=3605;//  in W/m^2K
Ti=100;// in degree C
To=125;// in degree C
r1=0.2;// in m
r2=0.02+0.006;// in m
r3=0.026+0.003;// in m
ri=0.02;// in m
L=1;// in m
// Part(i)
Ao= 2*%pi*r3*L;
Ai= 2*%pi*r1*L;
// Formula Uo= 1/Ao*sigmaR
Uo= 1/[ r3/(ri*hi) + r3/k1*log(r2/r1) + r3/k2*log(r3/r2) + 1/ho ];// in w/m^2K
disp(Uo,"Overall heat transfer coefficient based on outer area in W/m^2K");

//Part(ii)
del_T= To-Ti;
q=Uo*Ao*del_T;
disp(q,"Water to air heat transfer rate in W/m");

//Part (iii)
// Formula q= T/(log(r3/r2)/(2*%pi*k*L)) , where T=T2-T3 and k=k_s
k=k_s;
T= q*log(r3/r2)/(2*%pi*k*L);
disp(T,"Temperature drop across the scale deposited in degree C")

// Note: In Part (i), they put wrong value of r2 and r1 in log(r2/r1) to calculate the value of Uo. So there is some difference in answer of coding and book








