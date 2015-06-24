clc
// initialization of variables
P1=8000 // initial pressure in kPa
T1=300 // temperature in degree celsius
P2=2000 // final pressure in kPa

//solution
h1=2785 // specific enthalpy of steam in kJ/kg @ 8000 kPa and 300 degree celsius from  steam table
h2=h1 // throttling process thus enthalpy is constant
T2=212.4 // from steam table as we know enthalpy and pressure
hf2=909 // specific enthalpy of saturated liquid @ 2000 kPa and 300 degree celsius
hg2=2799.5 // specific enthalpy of saturated gas @ 2000 kPa and 300 degree celsius
x2=(h2-hf2)/(hg2-hf2) // quality of steam

vg2=0.0992 //specific    volume of saturated gas @ 2000 kPa and 212.4*c
vf2=0.0012 //specific volume of saturated liquid @ 2000 kPa and 212.4*c
v2=vf2+x2*(vg2-vf2) // from properties of pure substance

printf("The Final Temperature and Specific volume is "+string(T2)+" *C and "+string(v2)+" m^3/kg")
