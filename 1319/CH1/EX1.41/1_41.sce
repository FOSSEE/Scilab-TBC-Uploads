// To determine the parameters of a toroid

clc;
clear;

//Arc length of different materials
lni=0.3; // nickel iron alloy
lss=0.2;//Silicon Steel
lcs=0.1;//Cast steel

A=1*(10^-3); // Area of cross section of Toroid

N=100; // Hundred Turns

phi=6*(10^-4); // Flux
B=0.6; // Flux densities
m0=4*%pi*(10^-7);

//Field intensities
Hni=10; // Ni alloy
Hss=77;// Si Steel
Hcs=270; // CAst steel

mmf=(Hni*lni)+(Hss*lss)+(Hcs*lcs); // Total mmf

B=phi/A;

I=mmf/N;

//P = Permeability, RP = Relative permeablity

//For Nickel Alloy
mni=B/Hni; // P
mrni=mni/m0; // RP

//For Si Steel
mss=B/Hss; //P
mrss=mss/m0; // RP

//For Cast Steel
mcs=B/Hcs; //P
mrcs=mcs/m0; // RP

deff('x=rel(y,z)','x=(y*z)/phi'); // Fucntion to find out Reluctance

//Reluctances
Rni=rel(Hni,lni);
Rss=rel(Hss,lss);
Rcs=rel(Hcs,lcs);

printf('i) The mmf required to establish a magnetic flux of 6 *(10^-4) Wb = %g AT\n',mmf)
printf('ii) The Current through the coil = %g A\n',I)
printf('iii) Relative permeability and reluctance of each ferro magnetic material\n')
printf('    Nickel Iron alloy is %g and %g ohms \n',mrni,Rni)
printf('    Silicon Steel is %g and %g ohms \n',mrss,Rss)
printf('    Cast Steel is %g and %g ohms \n',mrcs,Rcs)
