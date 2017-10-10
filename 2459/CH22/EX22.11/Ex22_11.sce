//chapter22
//example22.11
//page498

V_DD=30 // V
I_D1=2.15d-3 // A
I_D2=9.15d-3 // A
R_D1=8.2d3 // ohm
R_D2=2d3 // ohm
R_S1=680 // ohm
R_S2=220 // ohm

V_RD1=I_D1*R_D1
V_D1=V_DD-V_RD1
V_S1=I_D1*R_S1

V_RD2=I_D2*R_D2
V_D2=V_DD-V_RD2
V_S2=I_D2*R_S2

printf("For stage 1 : dc voltage of drain = %.3f V and source = %.3f V \n",V_D1,V_S1)
printf("For stage 2 : dc voltage of drain = %.3f V and source = %.3f V \n",V_D2,V_S2)
