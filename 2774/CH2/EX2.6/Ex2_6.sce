clc
//solution
//    initialization of variables
T=500+273 // temperature of steam in kelvin
rho=24 // density in Kg/m^3
R=0.462 // gas constant from Table B.2
v=1/rho // specific volume and density relation
// PART (a)
P=rho*R*T // from Ideal gas equation
printf("PART (a) The Pressure is "+string(P)+" KPa \n")
// answer is approximated in textbook

// PART (b)
a=1.703 //  van der Waal's constant a value from Table B.7
b=0.00169 // van der Waal's constant b value from Table B.7
P=(R*T/(v-b))-(a/v**2) // Pressure from van der Waal's equation
printf(" PART (b) The Pressure is "+string(P)+" KPa \n")
// answer is approximated in textbook

// PART (c)
a=43.9 //  van der Waal's constant a value from Table B.7
b=0.00117 // van der Waal's constant b value from Table B.7

P=(R*T/(v-b))-(a/(v*(v+b)*sqrt(T)))// Redlich-Kwong equation
printf(" PART (c) The Pressure is "+string(P)+" KPa \n")
// answer is approximated in textbook

// PART (d)
Tcr=947.4 // compressibilty temperature from table B.3
Pcr=22100 // compressibility pressure from table B.3

TR=T/Tcr // reduced temperature
PR=P/Pcr // reduced pressure
Z=0.93 // from compressiblility chart
P=Z*R*T/v // Pressure in KPa
printf(" PART (d) The Pressure is "+string(P)+" KPa \n")
// answer is approximated in textbook

// PART (e)
P=8000 // pressure from steam table @ 500*c and v= 0.0417 m^3
printf(" PART (e) The Pressure is "+string(P)+" KPa \n")
// answer is approximated in textbook
