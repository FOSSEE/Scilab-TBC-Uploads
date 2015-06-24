clear;
clc;

//Example14.5[Diffusion of Hydrogen through a Spherical Container]
//Given:-
CA1=0.087,CA2=0;//Molar concentration of hydrogen in the nickel at inner and outer surfaces[kmol/m^3]
r2=4.8/2;//Outer radius[m]
t=0.06;//Thickness of shell[m]
D_AB=1.2*(10^(-12));//Diffusion coefficient for hydrogen in the nickel at the specified temperature is[m^2/s]
M_H2=2;//Molar Mass of H2[kg/kmol]
//Solution:-
r1=((2*r2)-(2*t))/2;//Inner radius[m]
N_diff=4*%pi*r1*r2*D_AB*(CA1-CA2)/(r2-r1);
disp("kmol/s",N_diff,"The molar flow rate of hydrogen through the shell by diffusion is")
m_diff=M_H2*N_diff;
disp("kg/s",m_diff,"The mass flow rate of hydrogen is")