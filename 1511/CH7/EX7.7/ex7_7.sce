// Example 7.7 page no-409
clear
clc
//Though the calculations are same as given in book answers do not match with the answers given in the Book.
Rs=0
hfe=50
hie =1.100
hre=0
hoe=0
r5=2.2000
r7=3.3000
r3=33
r1=0.1
r2=10
r9=2.2
R1=0.98
r6=2.2
R0=2
//Rl =R5 is in parallel with R7,R8 and h1e2
Rl1=(r5*r3*r7*hie)/((r5*r3*r7)+(hie*r3*r7)+(r5*hie*r7)+(r5*r3*hie))
printf("Rl1_dash=%f",Rl1)
Rl2=(r9*(r1+r2))/(r9+(r1+r2))
printf("\nRl2=%f = 2 KOhm(approx)",Rl2)
Re=(r1*r6)/(r1+r6)
printf("\nRe=%f kohm=%.0f ohm",Re,ceil(Re*1000))

Av1=-(hfe*Rl1)/(hie+(1+hfe)*0.098)//The voltage gain AV1 of Q] for a common emitter transistor with emitter resistance
Av2=(-hfe*Rl2)/hie//Voltage gain AY2 of transistor Q2
printf("\nAv1=%.2f\nAv2=%.2f",Av1,Av2)
Av=Av1*Av2//Voltage gain Ay of the two stages is cascade without feedback
B=r1/(r1+r2)
K=Av*B
D=1+K
Avf=Av/D
printf("\nAvf=%d",Avf)
Ri=hie+(1+hfe)*Re//Input resistance without external feedback
Ridash=Ri*D
printf("\nRi_dash = %f K Ohm",Ridash)
Rof=R0/D//Output resistance without feedback
printf("\nRof_dash=%f K Ohm",Rof)
