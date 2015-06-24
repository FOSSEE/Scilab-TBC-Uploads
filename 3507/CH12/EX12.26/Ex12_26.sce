//chapter12
//example12.26
//page261

R1=18 // kilo ohm
R2=4.7 // kilo ohm
Re=1 // kilo ohm
Vcc=10 // V

V_B=Vcc*R2/(R1+R2)

printf("voltage at base = %.3f V \n",V_B)
printf("The fact that V_C=10V and V_E is nearly equal to V_B reveals \nthat I_C=0 and I_E=0.So I_B drops to zero.So obvious fault is R_E is open. \n")
