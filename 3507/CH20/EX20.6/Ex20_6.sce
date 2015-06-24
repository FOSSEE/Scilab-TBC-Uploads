//chapter20
//example20.6
//page441

Vin_min=22 // V
Vout=15 // V
Il_max=0.1 // A

// for maximum series resistance, we consider the case when input voltage is minimum and load current is maximum because then zener current drops to minimum.Thus,
Rs_max=(Vin_min-Vout)/Il_max

printf("required series resistance = %.3f ohm \n",Rs_max)
