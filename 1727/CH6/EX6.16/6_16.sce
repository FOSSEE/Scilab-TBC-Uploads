clc
//Initialization of variables
lr=1/10
Vp=10 //knots
Fm=12 //N
//calculations
Vm=Vp*sqrt(lr)
Fp=Fm/lr^3
//results
printf("force = %.1f kN",Fp/1000)
