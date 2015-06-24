//chapter 19
//example 19.25
//page 880
printf("\n")
printf("given")
Vcc=10;Rl=1*10^3;f=3*10^6;Ip=25*10^-3;Vce=.3;
Vp=Vcc-Vce
Po=(Vp)^2 /(2*Rl)
T=1/f
t=(Po*T)/(Ip*Vp)
angle=(t/T)*360;
printf(" conduction angle is %3.1fdegree\n",angle)
Idc=Po/Vp
Pi=Vcc*Idc;
printf( "dc input power is %3.4fW\n",Pi)
n=(Po/Pi)*100//efficiency