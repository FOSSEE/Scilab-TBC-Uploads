clc
// initialization of variables
P1=2000 // initial pressure in kPa
T1=600 // initial temperature in degree celsius
p2=600 // final pressure in kPa
T2=200 //   final temperature in degree celsius
d1=0.06 // diameter of inlet pipe in metre
d2=0.120 // diameter of outlet pipe in metre
V1=20 // velocity at inlet in m/s

//solution
// from superheat table C.3 values are noted
v1=0.1996 // specific volume of superheated steam @ 600*C and 2000 kPa
v2=0.3520 // specific volume of superheated steam @ 200*C and 2000 kPa
rho1=1/v1 //  initial density
rho2=1/v2 // final density
A1=(%pi*d1**2)/4 // inlet area
A2=(%pi*d2**2)/4 // exit area

V2=(rho1*A1*V1)/(rho2*A2) // from continuity equation
printf("The Exit velocity is "+string(V2)+" m/s \n")

mdot=rho1*A1*V1 // mass flow rate
printf(" The mass flow rate is "+string(mdot)+" kg/s")


