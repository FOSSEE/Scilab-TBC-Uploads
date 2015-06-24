
clc
clear
//Input data
mp=1.007277;//Atomic Mass of proton in amu
mn=1.008665;//Atomic Mass of neutron in amu
me=0.00055;//Atomic Mass of electron in amu
mo=15.99491;//Atomic Mass of oxygen in amu
np=8;//Number of protons in oxygen
ne=8;//Number of electrons in oxygen
nn=8;//Number of neutrons in oxygen
a=931;//One amu in MeV
No=16;//Number of nucleons in oxygen

//Calculations
m=(np*mp)+(ne*me)+(nn*mn)-mo;//The mass defect in amu
B=m*a;//Binding energy in MeV
Bn=B/No;//Binding energy per nucleon

//Output
printf('The mass defect = %3.5f amu \n The binding energy per nucleon = %3.2f MeV ',m,Bn)

