//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.8\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.8  (page no. 193) 
// Solution

//Using Table 2 ans a quality of 85%(x=0.85),we have
//at 1.0 MPa
x=0.85;
sf=2.1387; //saturated liquid entropy //Unit:kJ/kg*K
sfg=4.4487; //Evap. Entropy //Unit:kJ/kg*K 
hf=762.81; //saturated liquid enthalpy //Unit:kJ/kg
hfg=2015.3; //Evap. Enthalpy //Unit:kJ/kg
uf=761.68; //saturated liquid internal energy //Unit:kJ/kg
ufg=1822.0; //Unit:kJ/kg //Evap. internal energy
vf=1.1273; //Saturated liquid specific volume //Unit:m^3/kg 
vfg=(194.44-1.1273); //evap. specific volume //Unit:m^3/kg 
sx=sf+(x*sfg); //entropy //kJ/kg*K
printf("Entropy of a wet steam mixture at 1.0 MPa  is %f kJ/kg*K\n",sx);
hx=hf+(x*hfg); //enthalpy //kJ/kg*K
printf("Enthalpy of a wet steam mixture at 1.0 MPa is %f kJ/kg\n",hx);
ux=uf+(x*ufg); //internal energy  //kJ/kg*K
printf("Internal energy of a wet steam mixture at 1.0 MPa is %f kJ/kg\n",ux);
vx=(vf+(x*vfg))*(0.001); //specific volume //m^3/kg
printf("Specific Volume of a wet steam mixture at 1.0 MPa is %f m^3/kg\n",vx);
//As a check,
px=10^6; //psia //pressure
ux=hx-((px*vx)/10^3); //1 ft^2=144 in^2 //internal energy
printf("As a check,\n")
printf("Internal energy of a wet steam mixture at 120 psia is %f kJ/kg\n",ux);
printf("Which agrees with the values obtained above");




