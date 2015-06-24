//Determine the small signal voltage gain and input and output resistance
clear;
clc;
//soltion
//given

R1=500*10^3;//ohm
R2=50*10^3;//ohm
Rd=5*10^3;//ohm
Rs=100;//ohm
Rl=5*10^3;//ohm
gm=1.5*10^-3;//S
rd=200*10^3;//ohm
Rg=R1*R2/(R1+R2);
Rac=Rd*Rl/(Rd+Rl);
Av=-gm*Rac;
Ri=Rg;
Ro=(rd*Rac/(rd+Rac));
printf("The small signal voltage gain = %.2f\ninput resistance= %.2f kΩ\noutput resistance = %.1f kΩ",Av,Ri/1000,Ro/1000);
