//chapter20
//example20.8
//page441

Ic=1 // A
gain=50 
Vout=6 // V
Vbe=0.5 // V
Vin=10 // V
Iz=10d-3 // A

Ib=Ic/gain
Vz=Vbe+Vout // Vout=Vz-Vbe

V_Rs=Vin-Vz
Rs=V_Rs/(Ib+Iz)

printf("required breakdown voltage for zener diode = %.3f V \n",Vz)
printf("required value of Rs = %.3f ohm \n",Rs)

// in book Rs=117 ohm but accurate answer is 116.667 ohm

// note : in xcos, there is no Zener diode so in the result (circuit) file a simple diode is used to represent a zener diode
