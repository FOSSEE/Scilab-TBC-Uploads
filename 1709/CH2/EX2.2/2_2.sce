clc
//Initialization of variables
L=0.305 //m
v=4.58 //m/s
i=10 //A
B=1 //W/m^2
//calculations
F=i*B*L
W=F*v
//results
printf("Force necessary = %.2f N",F)
printf("\n Work per unit time = %.2f W",W)
