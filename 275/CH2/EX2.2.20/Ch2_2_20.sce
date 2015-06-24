clc
disp("Example 2.20")
printf("\n")
disp("Calculate peak,RMS,DC load current, DC in each diode,DC output voltage,% regulation,PIV,RMS current,DC load voltage")
printf("Given\n")
Rf=500
RL=2000
V2=280
//Secondary voltage is
Vm=sqrt(2)*V2 
//Peak load current
Im=Vm/(Rf+RL)
//DC load current
Idc=2*Im/(%pi)
//Since each diode acts as a half-wave rectifier,the dc current through each diode is
Idc1=Im/(%pi)
//dc output power
Pdc=[Idc]^2*RL
%reg=(Rf/RL)*100
//PIV across each diode
PIV=2*Vm
//RMS load current
Irms=Im/(sqrt(2))
//RMS through each diode is
Irms1=(Im/2)
//Dc load voltage
Vdc=Idc*RL
printf("peak load, DC load current is \n%f ampere\n%f ampere\n",Im,Idc)
printf("direct current in each diode is \n%f ampere\n",Idc1)
printf("dc output power is \n%f watt\n",Pdc)
printf("percentage regulation is \n%f\n",%reg)
printf("PIV across each diode is \n%f volt\n",PIV)
printf("rms load current and rms current through each diode is\n%f ampere\n%f ampere \n",Irms, Irms1)
printf("DC load voltage is \n%f volt\n",Vdc)
