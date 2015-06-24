
// Ex3_11

clc;

// Given:
mH=1.007825;
mn=1.008665;
M1=22.98977;// mass of Na 23
M2=21.994435;// mass of Na 22
M3=21.991385;// mass of Ne 22
// Solution:

m1=((11*1.007825+12*1.008665)-M1);
m2=((11*1.007825+11*1.008665)-M2);
m3=((10*1.007825+12*1.008665)-M3);
Sn=(m1-m2)*931;// neutron seperation energy
Sp=(m1-m3)*931;// proton seperation energy

printf("\n The neutron seperation energy is = %f MeV",Sn)
printf("\n The proton seperation energy is = %f MeV",Sp)

// Note: The answers are given in the form of atomic mass units where as in the question its asked for energies.
