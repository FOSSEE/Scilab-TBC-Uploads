//chapter9
//example9.5
//page147

E1=24 // V
E2=4 // V
Vo=0.7 // V
R=2 // kilo ohm

// diode D1 is forward biased and diode D2 is reverse biased so
I=(E1-E2-Vo)/R

printf("current in the circuit = %.3f mA \n",I)
