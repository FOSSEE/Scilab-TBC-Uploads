//chapter12
//example12.7
//page243

V_CC=15 // V
gain_beta=100
V_BE=0.6 // V
V_CE=8  // V
I_C=2 // mA

// here V_CC=V_CE+I_C*R_C so we get
R_C=(V_CC-V_CE)/I_C

I_B=I_C/gain_beta

// also V_CC=I_B*R_B+V_BE so we get
R_B=(V_CC-V_BE)/I_B

printf("collector resistance = %.3f kilo ohm \n",R_C)
printf("base resistance = %.3f kilo ohm \n",R_B)
