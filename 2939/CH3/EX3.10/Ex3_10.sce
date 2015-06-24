// Ex3_10

clc;

// Given:
mH=1.007825;
mn=1.008665;
M1=207.97666;// mass of Pb 208
M2=206.97590;// mass of Pb 207
M3=206.97739;// mass of Tl 207

// Solution:

B1=((82*1.007825+126*1.008665)-207.97666)*931;// binding energy for Pb 208
B2=((82*1.007825+125*1.008665)-206.97590)*931;// binding energy for Pb 207
B3=((81*1.007825+126*1.008665)-206.97739)*931;// binding energy for Tl 207
Sn=B1-B2;// neutron seperation energy
Sp=B1-B3;// proton seperation energy

printf("\n The neutron seperation energy is = %f MeV",Sn)
printf("\n The proton seperation energy is = %f MeV",Sp)
