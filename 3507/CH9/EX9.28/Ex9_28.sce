//chapter9
//example9.28
//page174

Ei=16 // V     
Vz=12 // V    since we want to ragulate at 12 V
Eo=Vz
Iz_min=0 // A
Il_max=200d-3 // A

// Zener current will be min when input voltage is min

// we see that R=(Ei-Eo)/(Iz-Il) and minimum Iz occurs when Il is maximum so
R=(Ei-Eo)/(Iz_min+Il_max)

Izm=Il_max
Pzm=Vz*Izm

printf("Zener voltage = %.3f V \n",Vz)
printf("required series resistance = %.3f ohm \n",R)
printf("maximum power rating of zener diode = %.3f W \n",Pzm)
