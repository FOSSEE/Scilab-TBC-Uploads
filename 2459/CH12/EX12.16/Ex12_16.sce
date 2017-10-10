//chapter12
//example12.16
//page252

alpha=0.985
V_BE=0.3 // V
V_CC=16 // V
V_CE=6 // V
I_C=2 // mA
R_E=2 // kilo ohm
R2=20 // kilo ohm

gain_beta=alpha/(1-alpha)
I_B=I_C/gain_beta

V_E=I_C*R_E
V2=V_BE+V_E
V1=V_CC-V2

I1=V2/R2
R1=V1/I1

V_RC=V_CC-V_CE-V_E
R_C=V_RC/I_C

printf("R1 = %.3f kilo ohm \n",R1)
printf("collector resistance = %.3f kilo ohm \n",R_C)
