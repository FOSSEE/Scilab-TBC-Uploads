clc

// solution
//initialization of variables
// refer to fig 6.10c
effi=0.8 // compressor efficiency
mdot=0.6 // mass flow rate of refrigerant in Kg/sec
T4=-24 // temperature of evaporator
T2=39.39 // temperature of condensor
T1=-20 // supeheating temperature
T3=40 // subcooling temperature
h3=106.2 // enthalpy of liquid R-134a @ 40 degree celsius from table D.1
h4=h3 // isenthalpic process
h1=236.5 // enthalpy of superheated R-134a @ 0.10 MPa and -20 degree celsius from table D.3
s1=0.960 //entropy of superheated R-134a @ 0.10 MPa and -20 degree celsius from table D.3 

s2dash=s1 // isentropic process

// using interpolation from table D.3 @ 1.0 MPa for s2dash=0.960 
h2dash=(s2dash-0.9428)*(291.36-280.19)/(0.9768-0.9428)+280.19

h2=(h2dash-h1)/(effi)+h1 // by definition of compressor efficiency

QdotE=mdot*(h1-h4)//heat transfer rate power given to compressor
 
wdotc=mdot*(h2-h1)// power given to compressor

COP=QdotE/wdotc // coefficient of performance

printf("The rate of refrigeration is %0.1f kJ/s \n ",QdotE)

printf("The coefficient of performance is %0.2f \n ",COP)
// The value of Wdotc is shown wrong in the textbook. It should be multiplied by mass flow rate
 
