//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 4.1
//calculation of coulomb force

//given data
np=26//number of protops in an iron atom
na=6*10^26//number of atome in 58 kg iron
mi=58//mass(in kg) of iron
e=1.6*10^(-19)//charge(in coulomb) on an electron
perdiff=1//percentage of charge of electron less than that of proton
r=1//separation(in m) between the two blocks

//calculation
poschrg=(na*np*e*perdiff)/(mi*100)
fc=(9*10^9*poschrg*poschrg)/(r*r)

disp(fc,'the coulomb force(in newton) between the two blocks is newton')
