//chapter12
//example12.6
//page242

Vcc=10 // V
R_B=1d3 // kilo ohm
R_E=1 // kilo ohm
Vbe=0 // since it is negligible
gain_beta=100

// by Kirchoff voltage law to base side we get Vcc=I_B*R_B+Vbe+I_E*R_E
// but I_E=I_B+I_C and I_C=gain_beta*I_B
// so we get Vcc=I_B*R_B+Vbe+R_E*I_B*(1+gain_beta)
// making I_B as subject we get

I_B=(Vcc-Vbe)/(R_B+R_E*(1+gain_beta)) // in ampere
I_C=gain_beta*I_B // in ampere
I_E=I_C+I_B // in ampere

printf("base current = %.4f mA \n",I_B)
printf("collector current = %.4f mA \n",I_C)
printf("emitter current = %.4f mA \n",I_E)
