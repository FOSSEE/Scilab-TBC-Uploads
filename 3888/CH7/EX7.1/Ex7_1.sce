//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 7.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


helium_atomic_mass=4.002603;              //Atomic mass of Helium in amu
mp=1.007277;                              //Atomic mass of Proton in amu
mn=1.008665;                              //Atomic mass of Neutron in amu
me=0.00055;                               //Atomic mass of Electron in amu
del_m=2*mp+2*me+2*mn-helium_atomic_mass;  //Mass Defect in amu
Be=del_m*931;                             //Helium Binding Energy in MeV
Be_molecule=Be/4;                         //Helium Binding Energy per Nucleon in MeV


printf("\nBinding energy per nucleon is %.3f MeV",Be_molecule);
