clc
clear 
printf("example 4.3 page number 128\n\n")

//to find the viscosity of oil

F=0.5*9.8;   //in N
A=3.14*0.05*0.15;   //in m2
shear_stress=F/A;   //in Pa
printf("shear_stress = %f Pa",shear_stress)

velocity_distribution =0.1/(0.05*10^-3);
viscosity=shear_stress/velocity_distribution;
printf("\n\nviscosity = %f Pa-s",viscosity) 
