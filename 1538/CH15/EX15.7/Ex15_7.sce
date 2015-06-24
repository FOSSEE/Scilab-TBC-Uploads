//example-15.7
//page no-474
//given
//heat for recovery of yeild point in zinc
Q=83.14*10^3  //J/mole
//gas constant
R=8.314*10^3  //J/mol K
//temperature
T1=0+273  //K
T2=27+273  //K
//recovery time at 0 degree celcius
t2=5  //min
//the recovery time for the two different temp is given by
//1/t1=A*exp(-Q/R/T1)   --------------(1)
//1/t2=A*exp(-Q/R/T2)  -----------(2)
//taking ratio of (1) to (2)
//we get
t1=t2*exp(Q/R*(1/T1-1/T2))  //min (there is calculation mistake I myself have checked from calculator too)
printf ("the recovery time at 27 degree celcius is %f min",t2)
