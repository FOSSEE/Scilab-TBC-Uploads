clc
// initialization of variables
P1=4000 // inlet pressure in kPa
T1=500 // inlet temperature in degree celsius
V1=200 // inlet steam velocity in m/s
d1=0.05 // inlet diameter in 'm'
P2=80 // exit pressure in kPa
d2=0.250 // exit diameter in 'm'

// solution
v1=0.08643 // specific volume from steam table @ 4000 kPa and 500*C
v2=2.087 // specific volume from steam table @ 80 kPa and 500*C
rho1=1/v1 // density at inlet
rho2=1/v2 // density at outlet
A1=(%pi*d1**2)/4 // inlet area
A2=(%pi*d2**2)/4
mdot=rho1*A1*V1 // mass flow rate

//now using table C.3
h1=3445 // initial specific enthalpy @ 4000 kPa and 500 *C 
h2=2666 // final specific enthalpy @ 80 kPa and 500 *C
WT=-mdot*(h2-h1) // maximum power from first law
printf("The power output is "+string(WT)+" kJ/s \n ")

V2=(A1*V1*rho1)/(A2*rho2) 
delKE=mdot*((V2**2)-(V1**2))/2
printf(" The change in K.E is "+string(delKE)+" J/s")
// the amswer is different as the solution in scilab is highly precise while the solution in textbook is wrong due to approximation of exit velocity
