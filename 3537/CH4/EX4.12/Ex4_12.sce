//Example 4_12
clc();
clear;
//To calculate distance betweenadjacent atoms
molwt=23+35.5  //units in grams/mol
avagadro=6.023*10^23  //units in gm/mol
mass=molwt/avagadro  //units in gm
unitvol=2.18   //units in gm/cm^3
noofmol=unitvol/mass   //units in gm/cm^3
total=2*noofmol  //units in gm/cm^3
printf("number of atoms in NaCl is")
disp(total)
printf("atom/cm^3")
a=(1/total)^(1/3)
a=a*10^8   //units in A
printf("\nradius a=%.2f A",a)
