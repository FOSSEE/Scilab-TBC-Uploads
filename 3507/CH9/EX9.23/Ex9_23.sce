//chapter9
//example9.23
//page172

Ei=22 // V     
Vz=18 // V
Rl=18 // ohm
Eo=Vz
Iz_min=200d-3 // A

// Zener current will be min when input voltage is min

// load current is
Il_max=Vz/Rl

// we see that R=(Ei-Eo)/(Iz-Il) and minimum Iz occurs when Il is maximum so
R=(Ei-Eo)/(Iz_min+Il_max)

printf("required series resistance = %.3f ohm \n",R)

// on inserting this series resistance the output voltage will remain constant at 18 V
