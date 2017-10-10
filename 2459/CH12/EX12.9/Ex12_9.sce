//chapter12
//example12.9
//page245

V_CC=12 // V
gain_beta1=100
gain_beta2=50
V_BE=0.3 // V
V_CE=8  // V
I_C=1 // mA

// here V_CC=V_CE+I_C*R_C so we get
R_C=(V_CC-V_CE)/I_C

I_B=I_C/gain_beta1

// we know that R_B=(V_CC-V_BE-gain_beta1*R_C*I_B)/I_B so
R_B=(V_CC-V_BE-gain_beta1*R_C*I_B)/I_B


// for gain_beta=50 i.e. gain_beta2

// we know that R_B=(V_CC-V_BE-gain_beta2*R_C*I_B)/I_B so we get
I_B2=(V_CC-V_BE)/(R_B+gain_beta2*R_C)

I_C2=gain_beta2*I_B2

V_CE2=V_CC-I_C2*R_C

printf("for beta=100,required base resistance = %.3f kilo ohm \n",R_B)
printf("for beta=50,new operating point is %.3f V, %.3f mA \n",V_CE2,I_C2)
