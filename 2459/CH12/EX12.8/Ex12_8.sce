//chapter12
//example12.8
//page245

V_CC=20 // V
R_B=100 // kilo ohm
R_C=1 // kilo ohm
V_BE=0.7 // V
gain_beta=100

// we know that R_B=(V_CC-V_BE-gain_beta*R_C*I_B)/I_B so we get
I_B=(V_CC-V_BE)/(R_B+gain_beta*R_C)

I_C=gain_beta*I_B

V_CE=V_CC-I_C*R_C

printf("operating point is %.3f V, %.3f mA \n",V_CE,I_C)

// the accurate answer is 10.35V,9.65mA but in book it is given as 10.4V,9.6mA
