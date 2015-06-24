

clc
// given that
x=5*10^-4     //Position in m
D=1.6*10^-11  //Diffusion coefficient  in m^2/s
Co=0.25//Initial Concentration in wt%
Cs=1.2 //Surface concentration in wt%
Cx=0.8 //Concentration at any x  in wt%
z1 = 0.35 // tabular data
z2 = 0.4 // tabular data
erf_z1 = 0.3794 // tabular data
erf_z2 = 0.4284 // tabular data
printf("Example 6.2\n")
C=1-((Cx-Co)/(Cs-Co))
z = (C-erf_z1)/(erf_z2-erf_z1) * (z2-z1) + z1 //  Calculation by interpolation
t= ((x/(2*sqrt(D)))/z)^2 // calculation of time
printf("\n Time required is %d s or %.2f h\n",t,t/3600);
// Answer in book is 25400 sec or 7.1 h. It is because of considering different number of significant figure

