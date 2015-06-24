//chapter9
//example9.8
//page148

V=15 // V
R=0.5 // kilo ohm
V_D=0.7 // V

// both diodes are forward biased

I1=(V-V_D)/R
I_D1=I1/2
I_D2=I_D1

printf("current through diode D1 = %.3f mA and diode D2 = %.3f mA \n",I_D1,I_D2)
