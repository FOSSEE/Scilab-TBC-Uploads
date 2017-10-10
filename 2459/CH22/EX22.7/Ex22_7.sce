//chapter22
//example22.7
//page496

I_DSS=5d-3 // A
V_DD=20 // V
V_DS=10 // V
V_P=-2 // V
V_G=0 // V
I_D=1.5d-3 // A

V_GS=V_P*(1-((I_D/I_DSS)^0.5)) // I_D=I_DSS*(1-V_GS/V_P)^2
V_S=V_G-V_GS
R_S=V_S/I_D

// by Kirchoff's law we get V_DD=I_D*R_D+V_DS+I_D*R_S so making R_D as subject we get
R_D=(V_DD-V_DS-I_D*R_S)/I_D

printf("Rs = %.3f kilo ohm and Rd = %.3f kilo ohm \n",R_S/1000,R_D/1000)
