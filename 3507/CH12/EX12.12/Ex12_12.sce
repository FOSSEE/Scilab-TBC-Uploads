//chapter12
//example12.12
//page249

Vcc=15 // V
Re=2 // kilo ohm
Rc=1 // kilo ohm
gain_beta=100
Vbe=0.7 // V
R1=10 // kilo ohm
R2=5 // kilo ohm

Eo=Vcc*R2/(R1+R2)
Ro=R1*R2/(R1+R2)

printf("thevenin voltage = %.3f V \n",Eo)
printf("thevenin resistance = %.3f kilo ohm \n",Ro)

// here Eo=Ib*Ro+Vbe+Ie*Re
// now considering Ie=gain_beta*Ib, and making Ib as subject we get
// Ib=(Eo-Vbe)/(Ro+gain_beta*Re)
// Ic=gain_beta*Ib=gain_beta*(Eo-Vbe)/(Ro+gain_beta*Re)
// dividing numerator and denominator by gain_beta we get
// Ic=(Eo-Vbe)/(Re+Ro/gain_beta)
// Ro/gain_beta is negligible compared to Re so
Ic=(Eo-Vbe)/Re
Vce=Vcc-Ic*(Rc+Re)

printf("the operating point is %.3f V and %.3f mA \n",Vce,Ic)
