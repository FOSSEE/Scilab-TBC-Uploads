//Nonsteady-State Diffusion Time Computation I

clear;
clc;

printf("\tExample 5.2\n");

Co=0.25;        //Initial Conc. in wt%
Cs=1.2;         //Surface conc. in wt%
Cx=0.8;         //Conc. at any x  in wt%

x=5*10^-4;     //Position in m
D=1.6*10^-11;  //Diffusion coeff in m^2/s

C=1-((Cx-Co)/(Cs-Co));
z=erfinv(C);

//But C=erf(x/2sqrt(Dt))
t=x^2/(4*D*z^2);

printf("\nTime required is %d s or %.1f h\n",t,t/3600);

//End