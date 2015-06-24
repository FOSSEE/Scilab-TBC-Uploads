//chapter12
//example12.10
//page246

V_BE=0.7 // V
gain_beta=100
I_C=1 // mA
V_CE=2 // V

I_B=I_C/gain_beta

// since V_CE=V_BE+V_CB we get
V_CB=V_CE-V_BE

R_B=V_CB/I_B

printf("base resistance=%.3f kilo ohm \n",R_B)
