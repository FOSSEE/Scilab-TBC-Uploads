//chapter12
//example12.17
//page253

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
// now considering Ie=gain_beta*Ib, we can replace Ib=Ie/gain_beta
// Eo=(Ie/gain_beta)*Ro+Vbe+Ie*Re
// making Ie as subject we get
Ie=(Eo-Vbe)/(Re+Ro/gain_beta)

printf("emitter current = %.3f mA \n",Ie)
