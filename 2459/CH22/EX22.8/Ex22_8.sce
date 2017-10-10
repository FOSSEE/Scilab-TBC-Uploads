//chapter22
//example22.8
//page496

V_P=-5 // V
V_DD=30 // V
I_DSS=10 // mA
I_D=2.5 // mA
R1=1000 // kilo ohm
R2=500 // kilo ohm

// since I_D=I_DSS*(1-(V_GS/V_P))^2, making V_GS as subject we get

V_GS=V_P*(1-(I_D/I_DSS)^0.5)

V2=V_DD*R2/(R1+R2)

// since V2 = V_GS + I_D*Rs, making Rs as subject we get

Rs=(V2-V_GS)/I_D

printf("required value of Rs = %.3f kilo ohm \n",Rs)
