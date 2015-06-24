clc
//Initialization of variables
lr=1/25
Tp=6 //sec
dr=1/1.025
Fm=70 //N
//calculations
Tr=lr^(0.5)
Tm=Tr*Tp
Fr=dr*lr^3
Fp=Fm/Fr
//results
printf("Wave period = %.1f sec",Tm)
printf("Force = %.3f kN",Fp/1000)
