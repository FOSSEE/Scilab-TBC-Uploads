//chapter11
//example11.18
//page222

Vce2=10 // V
Vce1=2 // V
Ic1=2 // mA
Ic2=3 // mA

del_Vce=Vce2-Vce1 // V
del_Ic=Ic2-Ic1 // mA

Ro=del_Vce/del_Ic

printf("output resistance = %.3f kilo ohm \n",Ro)
