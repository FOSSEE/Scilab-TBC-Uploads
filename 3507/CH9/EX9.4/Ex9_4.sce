//chapter9
//example9.4
//page146

V=10 // V
V_D1=0.7 // V
V_D2=0.7 // V
R=48 // ohm
R_D1=1 // ohm
R_D2=1 // ohm

// D1 and D3 are forward biased while D2 and D4 are reverse biased thus
V_net=V-V_D1-V_D2
R_t=R_D1+R+R_D2
I=V_net/R_t

printf("circuit current = %.3f mA \n",I*1000)
