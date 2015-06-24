//Find (a) Av ¼ vds=vi; (b) Zin; (c) Zo looking back through the drain-source
//terminals, and (d) Ai ¼ ii=iL.
//Example 7.3 page no 208
clear
clc
Rl=14*10^3
rds=40*10^3
Rf=5*10^6
gm=1*10^-3
Av=((Rl*rds*(1-Rf*gm))/(Rf*rds+Rl*rds+Rl*Rf))
printf("\n The value of Av=%0.3f ",Av)
Zin=(Rf/(1-Av))/1000
printf("\n The value of Zin=%0.3f kOhm",Zin)
Ai=(Av*Zin)/Rl*1000
printf("\n The value of Ai=%0.3f ",Ai)
