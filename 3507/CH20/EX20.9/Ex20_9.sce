//chapter20
//example20.9
//page443

Vz=12 // V
Vbe=0.7 // V
Vin=20 // V
Rs=220 // ohm
Rl=1d3 // ohm
gain=50

Vout=Vz-Vbe
V_Rs=Vin-Vz
I_Rs=V_Rs/Rs
Il=Vout/Rl
Ic=Il
Ib=Ic/gain
Iz=I_Rs-Ib

printf("output voltage = %.3f V \n",Vout)
printf("zener current = %.3f mA \n",Iz*1000)
