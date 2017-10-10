//chapter12
//example12.15
//page252

R_C=2.2 // kilo ohm
V_CC=9 // V
gain_beta=50
V_BE=0.3 // V
I_C=2 // mA
V_CE=3 // V

I_B=I_C/gain_beta
I1=10*I_B

// I1=V_CC/(R1+R2) so let Rt=R1+R2 thus we get
Rt=V_CC/I1

// by Kirchoff voltage law to collector side we get
// V_CC=I_C*R_C+V_CE+I_E*R_E and also we have I_C=I_E so
// V_CC=I_C*R_C+V_CE+I_C*R_E so making R_E as subject we get
R_E=((V_CC-V_CE)/I_C)-R_C // in kilo ohm

V2=V_BE+I_C*R_E // since V_E=I_C*R_E
R2=V2/I1
R1=Rt-R2

printf("emitter resistance = %.3f ohm \n",R_E*1000)
printf("R1 = %3f kilo ohm \n",R1)
printf("R2 = %3f kilo ohm \n",R2)
