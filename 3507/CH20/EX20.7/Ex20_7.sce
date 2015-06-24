//chapter20
//example20.7
//page442

Vz=10 // V
Vbe=0.5 // V
Rl=1000 // ohm

Vout=Vz-Vbe
Il=Vout/Rl

printf("load voltage = %.3f V \n",Vout)
printf("load current = %.3f mA \n",Il*1000)
