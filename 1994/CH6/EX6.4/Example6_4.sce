//Chapter-6,Example6_4,pg 6-64
Vd=2
Tb=2*10^-3//time base
Vd=2
Nd=3
Vpp=Nd*Vd
Vm=Vpp/2
Vrms=Vm/sqrt(2)
Hd=2//horizontal occupancy
T=Tb*Hd
f=1/T
printf("RMS value of voltage\n")
printf("Vrms=%.2f V\n",Vrms)
printf("frequency of voltage across resistor\n")
printf("f=%.2f Hz",f)
