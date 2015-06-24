// Example 6.8 page no-364
clear
clc

hie =1000
hre = 10^-4
hfe = 50
hoe = 10^-8
Rl2=5000
Rs=1000
Ri2=hie+(1+hfe)*Rl2
Ri2=Ri2/1000
printf("Ri2= %d KOhm",Ri2)
Av2=1-(hie/(Ri2*1000))
printf("\nAv2 = %.3f",Av2)
Rl1=(10*256)/(10+256)
Ai1=-50*hfe
Av1=-hfe*Rl1/hie
o_g=Av1*Av2
Avs=o_g*Rs/(Rs+hie)
printf("\nRl1=%.2f KOhm\nAv1=%.1f\nOverall Gain=%.0f\nAvs=%.0f",Rl1,Av1*1000,floor(o_g*1000),floor(Avs*1000))
