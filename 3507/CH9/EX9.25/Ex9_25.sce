//chapter9
//example9.25
//page173

Ei=45 // V     
Vz1=15 // V
Vz2=15 // V
Iz=200d-3 // current rating for each zener in ampere

Eo=Vz1+Vz2

R=(Ei-Eo)/Iz

printf("regulated output voltage = %.3f V \n",Eo)
printf("required series resistance = %.3f ohm \n",R)
