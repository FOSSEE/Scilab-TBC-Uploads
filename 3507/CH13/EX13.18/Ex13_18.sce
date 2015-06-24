//chapter13
//example13.18
//page292

Av=80
Ai=120
V2=1 // V
Rout=1 // ohm
Rl=2 // ohm

V1=V2/Av // in V

// Av=Ao*Rl/(Rout+Rl) and Ai=Ao*Rin/(Rout+Rl) so
// Av/Ai=Rl/Rin hence
Rin=Rl*Ai/Av

I1=V1/Rin // in mA
Ap=Av*Ai

printf("required signal voltage = %.2f mV and current = %.2f micro ampere \n",V1*1d3,I1*1d3)
printf("power gain = %.3f \n",Ap)
