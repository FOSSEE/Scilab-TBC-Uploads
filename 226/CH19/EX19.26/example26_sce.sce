//chapter 19
//example 19.26
//page 882
printf("\n")
printf("given")
f=1*10^6;Xc=120;Vce=.5;Vcc=30;Rl=1.2*10^3;O=100;
Cp=1/(2*3.14*f*Xc)
Cp=1300*10^-12;//use standard value
Lp=1/(((2*3.14*f)^2)*Cp)
Vp=Vcc-Vce
Po=((Vp)^2) /(2*Rl)
Idc=Po/Vp
T=1/f
t=(O*T)/360
Ip=(Idc*T)/t