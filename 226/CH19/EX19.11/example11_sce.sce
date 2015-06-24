//chapter 19
//example 19.11
//page 843
printf("\n")
printf("given")
Rl=16;Po=6;Vbe=.7;
Vp=sqrt(2*Rl*Po)
Vr14=.1*Vp;Vr15=Vr14;
R14=.1*Rl;R15=R14;
Vce3=1;Vce4=Vce3;
Vr9=3;Vr11=Vr9;
Vcc=(Vp+Vr14+Vbe+Vce3+Vr9)
Vee=-Vcc;
Ip=Vp/Rl
disp(" DC power inpit from supply line")
Pi=(Vcc-Vee)*.35*Ip
disp(" output  transistor specification")
Pt=.5*(Pi-Po)
Vce=2*Vcc
Ic=1.1*Ip