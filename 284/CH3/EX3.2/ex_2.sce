// Chapter 3_The Semiconductor in Equilibrium
//Caption_Equilibrium Distribution of Electrons and holes
//Ex_2//page 87
T=400;
N=1.04*(10^19)
kT=0.0259*(T/300);
Nv=N*(T/300)^(1.5)
po=Nv*(%e^(-0.27/kT))
printf('The thermal equilibrium hole concentration in silicon at T=400K ==%fd per cm^3 \n',po)