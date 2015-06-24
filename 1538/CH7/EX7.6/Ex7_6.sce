//example-7.6
//page no-216
//given
//temp and pressure of Nitrogen gas
T=400  //K
P=15 //atm
//Nitrogen conc at the inner surface of the tank
M=12  //kg/m^3
//constant D0 and activation energy
D0=5*10^-7  // m^2/s
Q=75*10^3  //J/mol
//thickness of tank wall
x=6*10^-3  //m
D=M/x //kg/m^4  (calculation mistake in book)
//gas constant
R=8.314  //J/mol/K
//dufusing flux
//Jx=-Dx*m/x kg/m^2/s
//Dx can be determined as follows
Dx=D0*exp(-Q/R/T)  //m^2/s
//so //diffusing flux will be
Jx=Dx*D  //kg/m^2/s  (calculation mistake in book)
printf ("diffusing rate of nitrogen is %e kg/m^2/s",Jx)
