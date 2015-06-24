// Example 4.8 page no-208
clear
clc

alfa=0.98
Ie=-2   //in mA IE is negative because it is NPN transistor
Ic=-alfa*Ie
Ib=(1-alfa)*(-Ie)
vbe=0.6 //V
vcc=12 //V
re=100 //ohm
r2= 20000 //ohm
r1=3.3 //k-Ohm
vbn=vbe-(Ie*re*10^-3)
printf("\nIc = %.2f mA\nIb = %.0f micro A\nV_BN =%.1f V",Ic,Ib*1000,vbn)
Ir2=vbn*10^3/r2
Ir1=Ir2+Ib
printf("\nIR1 = %.0f micro A\nIR2 = %.0f micro A\nIrc = %.2f mA",Ir1*1000,Ir2*1000,Ir1+Ic)
vr1=vcc-((Ir1+Ic)*r1)-vbn
R1=vr1/Ir1
printf("\nR1=%d K-Ohm",ceil(R1))
