clc;clear;
//Example 16.3
//calculation of distance

//given values
z=4;//no of atoms in fcc
d=2180;//density in kg/m^3
M=23+35.3;//atomicmass of sodium chloride in kg
N=6.02*10^26;//avogadro's number

//calculation
a1=z*M/(N*d);
a=a1^(1/3);
l=a/2;//in m

disp(l*10^10,'distance between adjacent chlorine and sodium atoms in armstrong is');
