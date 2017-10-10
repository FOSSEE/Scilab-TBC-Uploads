clear//

//Variables

Av1 = 10.0                          //Voltage gain1
Av2 = 20.0                          //Voltage gain2
Av3 = 40.0                          //Voltage gain3

//Calculation

Av = Av1 * Av2 * Av3                //Voltage gain
Gv1 = 20 * log10(Av1)               //dB voltage gain1
Gv2 = 20 * log10(Av2)               //dB voltage gain2
Gv3 = 20 * log10(Av3)               //dB voltage gain3
Gv = Gv1 + Gv2 + Gv3                //dB voltage gain

//Result

printf("\n Overall voltage gain is  %0.3f .\nTotal dB voltage gain is  %0.0f  dB.",Av,Gv)
