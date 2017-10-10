//chapter11
//example11.16
//page219

Vcc=10
Ic=1 // mA
Rc1=4 // kilo ohm
Rc2=5 // kilo ohm

Vce1=Vcc-Ic*Rc1
Vce2=Vcc-Ic*Rc2

printf("for collector load = 4 kilo ohm, operating point is %.3f V,%.3f mA \n",Vce1,Ic)
printf("for collector load = 5 kilo ohm, operating point is %.3f V,%.3f mA \n",Vce2,Ic)
