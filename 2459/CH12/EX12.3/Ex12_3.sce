//chapter12
//example12.3
//page240

Vbb=2 // V
Vcc=9 // V
Rc=2 // kilo ohm
Rb=100 // kilo ohm
gain_beta=50

// by Kirchoff voltage law on base side, we get Ib*Rb+Vbe=Vbb so
Ib=Vbb/Rb // Vbe is negligible
Ic=gain_beta*Ib

// by Kirchoff voltage law on collector side, we get Ic*Rc+Vce=Vcc so
Vce=Vcc-Ic*Rc

// now for Rb=50 kilo ohm
Rb2=50 // kilo ohm

// since Rb is halved, Ib is doubled so
Ib2=2*Ib 
Ic2=Ib2*gain_beta
Vce2=Vcc-Ic2*Rc

printf("for Rb = 100 kilo ohm, collector current = %.3f mA \nand collector emitter voltage = %.3f V \n \n",Ic,Vce)
printf("for Rb = 50 kilo ohm, collector current = %.3f mA \nand collector emitter voltage = %.3f V \n",Ic2,Vce2)
