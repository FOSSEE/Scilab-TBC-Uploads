//chapter 19
//example 19.15
//page 854
printf("\n")
printf("given")
Vce=1.5;Vcc=17;Vd1=.7;R8=1.5*10^3;R9=R8;Rl=100;R6=8.2;
I4=(Vcc-Vd1)/(R8+R9)
Vc3=Vcc-(I4*R8);
printf(" bootstrap capacitance terminal voltage is %3.1fV\n",Vc3)
V=Vcc-Vce//V=Vp+Vr6
Ip=V/(Rl+R6)
Vp=Ip*Rl;
printf(" peak output voltage is %3.1fV\n",Vp)
Po=(Vp)^2 /(2*Rl);
printf(" peak output power is %dW\n",Po)