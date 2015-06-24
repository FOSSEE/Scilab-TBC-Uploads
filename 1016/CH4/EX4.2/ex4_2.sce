clc;clear;
//Example 4.2

//given data
d=2180;//density of NaCl
M=23.5+35.5;//Molecular weight
Na=6.02*10^26;//Avgraodo no. in 1/kg mole
n=4;//for f.c.c

//calculations
a=(n*M/(Na*d))^(1/3);
d=a/2;
disp((d*10^10),'distance between to adajcent atoms in angstrom')