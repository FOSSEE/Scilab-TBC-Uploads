//Chapter 5, Problem 20
clc
f=10e6                         //frequency in hertz
Ls=15e-6                      //capacitance in farad
Rs=2                         //resistance in ohm

//calculation
Qs=(2*%pi*f*Ls)/Rs
Rp=Rs*(1+(Qs^2))
Lp=((1+Qs^2)/Qs^2)*Ls

printf("Resistance Rp = %d Kohm\n\n Inductance Lp = %d uH\n\n Quality factor Qp = %d",Rp/1000,Lp*10^6,Qs)
