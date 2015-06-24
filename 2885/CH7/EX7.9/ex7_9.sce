//Find the output signal voltage of the amplifier
clear;
clc;
//soltion
//given

Rd=12*10^3;//ohm
Rg=1*10^6;//ohm
Rs=1*10^3;//ohm
Cs=25*10^-6;//F
u=80;      //amplification factor
rd=200*10^3;//ohm
Vi=0.1;//V
f=1*10^3;//Hz      //input frequency
Xcs=1/(2*%pi*f*Cs);
//This is much smaller than Rs therefore it is bypassed

gm=u/rd;
Av=gm*(rd*Rd/(rd+Rd));
Vo=Av*Vi;
printf("The output voltage is %.3f V",Vo);
