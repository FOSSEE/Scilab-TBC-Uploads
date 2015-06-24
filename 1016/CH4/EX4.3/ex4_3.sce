clc;clear;
//Example 4.3

//given data
d=2.163;//density in gm/cm^3
M=58.45;
Na=6.02*10^23;//Avgraodo no. in 1/gm mole

//calcualtions
n=Na/M;//no. of molecules/gram
n=n*d;//no. of molecules/cm^3 
n=2*n;//no. of atom/cm^3;
n=n^(1/3);//no. of atoms in a row 1cm long
d1=1/n;
disp((d1*10^8),'Spacing in angstrom')