//chapter22
//example22.10
//page498

V_DD=30 // V
I_D=2.5d-3 // A
R_D=5d3 // ohm
R_S=200 // ohm

V_DS=V_DD-I_D*(R_D+R_S)
V_GS=-I_D*R_S

printf("V_DS = %.3f V \n",V_DS)
printf("V_GS = %.3f V \n",V_GS)
