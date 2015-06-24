//clc();
clear;
//To calculate the distance between two adjacent atoms
MW=23+35.5;     //Molecular weight of NaCl
N=6.023*10^23;
M=MW/N;        //mass of NaCl molecule in gm
m=2.18;        //mass of unit volume of NaCl in gm
Nm=m/M;
disp(Nm);
Na=2*Nm;       //number of atoms per unit volume
V=1;          //volume of unit cube in cm^3
//V=n^3*a^3
//n^3=Na
a=(1/Na)^(1/3);
printf("distance between two adjacent atoms in cm is ")
disp(a);
