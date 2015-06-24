// Chapter 6_The pn junction
//Caption_Junction capacitance
//Ex_5//page 230
Na=10^16   //acceptor ion concentration
T=300   //temperature in kelvin
Nd=10^15
ni=1.5*(10^10)   //intrinsic ion concentration
Vr=5    //Reverse applied voltage
Vbi=0.635
V=Vr+Vbi
C=(e*eps*Na*Nd/(2*(V)*(Na+Nd)))^0.5
A=10^-4   //Area of the pn junction
Ca=A*C*10^12
printf('The junction capacitance for the given semiconductor is %1.3f pF',Ca)