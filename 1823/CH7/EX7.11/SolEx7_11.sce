//Find a current-source small-signal equivalent circuit for the CD FET amplifier.
//Example 7.11 page no 214
clear
clc
rds=30*10^3
Rs2=1.2*10^3
Rl=1*10^3       //kΩ
gm=0.002
Rg=1*10^6       //kΩ
Req=1/((1/rds)+(1/Rs2)+(1/Rl))
printf("\n The value of Req=%0.3f ",Req)
Av=((gm*Rg+1)*Req)/(Rg+(gm*Rg+1)*Req)
printf("\n The value of Av=%0.3f ",Av)
Ai=(Av*Rg/((1-Av)*Rl))
printf("\n The value of Ai=%0.3f ",Ai)
Rin=Rg/(1-Av)/10^6
printf("\n The value of Rin=%0.3f mOhm",Rin)
R0=1/(1/Rs2+1/rds+1/Rg+gm)
printf("\n The value of R0=%0.3f Ohm",R0)
