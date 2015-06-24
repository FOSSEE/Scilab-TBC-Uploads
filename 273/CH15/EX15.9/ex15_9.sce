clc;clear;
//Example 15.9
//calculation of energy released

//given values
M1=10.016125;//atomic mass of Boron in amu
M2=13.007440;//atomic mass of C13 in amu
M3=4.003874;//atomic mass of Helium in amu
mp=1.008146;//mass of proton in amu
amu=931;//amu in MeV

//calculation
Q=(M1+M3-(M2+mp))*amu;//total binding energy in M
disp(Q,'Binding energy per nucleon in MeV is');
