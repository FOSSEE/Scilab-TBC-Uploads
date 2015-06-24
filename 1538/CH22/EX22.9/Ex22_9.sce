//example-22.9
//page no-673
//given
//magnetic field at 0K temp 
H0=65*10^3  //A/m
//critical temp 
Tc=7.18  //K
//diameter of wire
d=1*10^-3  //m
//radius of wire
r=d/2  //m
//area of cross section
A=(%pi)*r^2  //m^2
//to find the current density at 4.2 K
//since it is given that Hc is parabolicaly dependent on T, so
T=4.2  //K
Hc=H0*(1-T^2/Tc^2)  //A/m
//critical current
Ic=2*(%pi)*r*Hc  //A
//critical current density Jc
Jc=Ic/A  //A/m^2
printf ("the critical current density of lead is %e A/m^2",Jc)
