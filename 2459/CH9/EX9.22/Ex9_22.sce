//chapter9
//example9.22
//page172

Ei=12 // V
Vz=7.2 // V
Eo=Vz
Iz_min=10d-3 // A
Il_max=100d-3 // A

// we see that R=(Ei-Eo)/(Iz-Il) and minimum Iz occurs when Il is maximum so
R=(Ei-Eo)/(Iz_min+Il_max)

printf("required series resistance = %.3f ohm \n",R)

// on inserting this series resistance the output voltage will remain constant at 7.2 V

// the accurate answer is 43.636 ohm but in book it is given as 43.5 ohm
