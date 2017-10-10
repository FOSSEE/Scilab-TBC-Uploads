//chapter20
//example20.12
//page446

Vz=8.3 // V
Vbe=0.7 // V
Rl=100 // ohm
Rs=130 // ohm
Vin=22 // V

Vout=Vz+Vbe
Il=Vout/Rl
Is=(Vin-Vout)/Rs
Ic=Is-Il

printf("regulated output voltage = %.3f V \n",Vout)
printf("load current = %.3f mA \n",Il*1000)
printf("current through Rs = %.3f mA \n",Is*1000)
printf("collector current = %.3f mA \n",Ic*1000)
