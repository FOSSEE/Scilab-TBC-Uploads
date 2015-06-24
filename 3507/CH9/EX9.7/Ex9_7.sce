//chapter9
//example9.7
//page148

V=10 // V
V_D=0.7 // V
R_BC=2 // kilo ohm
R=2 // kilo ohm

// by Kirchoff voltage law we get
// -V_D-I_D*R_BC-2*I_D*R+V=0 thus making I_D as subject we get
I_D=(V-V_D)/(R_BC+2*R)
V_Q=2*I_D*R

printf("I_D = %.3f mA \n",I_D)
printf("V_Q = %.3f V \n",V_Q)
