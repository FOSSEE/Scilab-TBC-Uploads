// Chapter 6_The pn junction
//Caption_Junction capacitance
//Ex_6//page 232
T=300   //temperature in kelvin
S=1.32*10^15    //slope of the curve between Vr and (1/c)^2
ni=1.5*(10^10) 
Vbi=0.855     //Built in potential barrier
eps=11.7*8.85*(10^-14)
e=1.6*(10^-19)
Nd=2/(e*eps*S)
Na=((ni^2)/Nd)*exp(Vbi/0.0259)
printf('The impurity doping concentration in p+n junction is -acceptor %f cm^-3 and donor %f cm^-3',Na,Nd)