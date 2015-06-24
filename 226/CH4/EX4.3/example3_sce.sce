//chapter 4
//example 4.1
//page 153
printf("\n")
printf("given")
Bdc=80;Bac=Bdc;Vcc=18;R1=10*10^3;
Ib=15*10^-6;//for Vb=.7
Ic=Bdc*Ib;
Vc=Vcc-(Ic*R1);
printf("dc collector voltage is %dV\n",Vc)
disp(" when vi=50mV")
Ib=3*10^-6;Vi=50*10^-3;
Ic=Bdc*Ib
Vo=Ic*R1
Av=Vo/Vi