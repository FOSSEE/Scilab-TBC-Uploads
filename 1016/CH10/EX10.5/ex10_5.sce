clc;clear;
//Example 10.5

//given data
m1=1.008665;//mass of 0n1 in a.m.u
m2=1.007825;//mass of 1H1 in a.m.u
m3=34.9800;//mass 17Cl35 in a.m.u
n=17+18;

//calculations
dm=(17*m2)+(18*m1)-m3;
Q=dm*931;
disp(Q,'Binding energy in MeV');
BEn=Q/n;
disp(BEn,'Binding energy per nucleon in MeV')