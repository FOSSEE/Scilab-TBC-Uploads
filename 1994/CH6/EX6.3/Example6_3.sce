//Chapter-6,Example6_3,pg 6-63
//from plot 1 subdivision=0.2 units
pp=2+3*0.2//positive peak
np=2+3*0.2//negative peak
Nd=pp+np//no. of divisions
Vd=2*10^-3//volts per division
Vpp=Nd*Vd
Vm=Vpp/2
Vrms=Vm/sqrt(2)
printf("peak value of voltage\n")
printf("Vm=%.4f V\n",Vm)
printf("RMS value of voltage\n")
printf("Vrms=%.4f V\n",Vrms)
