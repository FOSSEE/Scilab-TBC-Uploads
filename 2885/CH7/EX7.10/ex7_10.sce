//Determine the small signal voltage gain and input and output resistance
clear;
clc;
//soltion
//given

Rd=2*10^3;//ohm
rd=100*10^3;//ohm
Rg=1*10^6;//ohm
gm=2*10^-3;//S
Av=-gm*(rd*Rd/(rd+Rd));
Ri=Rg;
Ro=rd*Rd/(rd+Rd);
printf("The small signal voltage gain = %.0f\ninput resistance= %.0f MΩ\noutput resistance = %.0f kΩ",Av,Ri/10^6,Ro/1000);
