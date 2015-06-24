//chapter11
//example11.7
//page206

Vbe=0.7 // V
Vcc=18 // V
Vee=8 // V
Rc=1.2 // kilo ohm
Re=1.5 //kilo ohm

// by Kirchoff's voltage law to emitter side loop, we get Vee=Ie*Re+Vbe so
Ie=(Vee-Vbe)/Re
Ic=Ie // nearly

// by Kirchoff's voltage law to collector side loop, we get Vcc=Ic*Rc=Vcb so
Vcb=Vcc-Ic*Rc

printf("collector curent  = %.3f mA \n",Ic)
printf("collector base voltage = %3f V \n",Vcb)
