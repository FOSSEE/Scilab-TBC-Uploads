// Chapter 3_The Semiconductor in Equilibrium
//Caption_Equilibrium Distribution of Electrons and holes
//Ex_1//page 85
T=300      // Temperatire in kelvin
Nc=2.8*(10^19)     //Effective density of states function in the conduction band in per cm cube
delE=0.25     //Fermi energy is 0.25eV below the conduction band
k=1.389*(10^-23)     //Boltzmann constant
kT=0.0259
fF=%e^(-delE/(kT))
no=Nc*fF
printf('The thermal equilibrium electron concentration in siliconn is %1.2fd per cm^3',no)