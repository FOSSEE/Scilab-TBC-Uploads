//chapter 19
//example 19.20
//page 865
printf("\n")
printf("given")
Vcc=12;Rl=10;Rd=.5;gfs=2.5;R7=820;V9=1*10^3;R10=R9;
Vp=(Vcc*Rl)/(Rd+Rl)
Ip=Vp/Rl
Vgs=Ip/gfs
Vr7=Is*R7
Vs=Vcc-Vr7-Vgs
disp(" op-amp peak output voltage is")
Vr9=(Vp*R9)/(R9+R10)