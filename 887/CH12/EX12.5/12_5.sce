clc 
//initialisation of variables
RL= 1 //kohms
R1= 2 //Mohms
R2= 2 //Mohms
KP= 50 //uA/V^2
L= 2 //um
W= 160 //um
Vto= 1 //V
IDQ= 10 //mA
VG= 7.5 //V
//CALCULATIONS
K= W*KP/(2*L*10^3)
VGSQ= sqrt(IDQ/K)+Vto
VS= VG-VGSQ
RS= VS*10^3/IDQ
gm= sqrt(2*KP/10^3)*sqrt(W/L)*sqrt(IDQ)
RL1= 1/(1/(RS)+(1/(RL*10^3)))
Av= gm*RL1*10^-3/(1+gm*RL1*10^-3)
Rin= 1/((1/R1)+(1/R2))
Ro= 1/(gm*10^-3+(1/RS))
Ai= Av*Rin/RL
G= Av*Ai*10^3
//RESULTS
printf ('G = %.1f ',G)
