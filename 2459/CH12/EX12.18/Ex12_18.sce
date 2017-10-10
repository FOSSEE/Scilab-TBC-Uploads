//chapter12
//example12.18
//page254

V_CC=10 // V
V_BE=0.2 // V
I_E=2 // mA
I_B=50d-3 // mA
R_E=1 // kilo ohm
R2=10 // kilo ohm

V2=V_BE+I_E*R_E
I2=V2/R2

I1=I2+I_B
V1=V_CC-V2
R1=V1/I1

printf("R1 = %.3f kilo ohm \n",R1)
