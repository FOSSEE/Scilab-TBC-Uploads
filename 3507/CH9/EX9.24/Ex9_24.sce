//chapter9
//example9.24
//page172

Ei=13 // V     
Vz=10 // V
Eo=Vz
Iz_min=15d-3 // A
Il_max=85d-3 // A

// Zener current will be min when input voltage is min

// we see that R=(Ei-Eo)/(Iz-Il) and minimum Iz occurs when Il is maximum so
R=(Ei-Eo)/(Iz_min+Il_max)

printf("required series resistance = %.3f ohm \n",R)
