clc
disp("Example 2.28")
printf("\n")
disp("Calculate DC output voltage,Ripple factor,Effeciency,PIV,%regulation,Peak diode current, Dc load current, dc current,RMS current")
printf("Given\n")
Vm=100
Rf=25
RL=950
//dc output voltage
Vdc=(((2*Vm)/(%pi))/(1+(2*Rf/RL)))
//Ripple factor
Vrms=(Vm/sqrt(2))/(1+(2*Rf/RL))
r=sqrt((Vrms/Vdc)^2-1)
//Efficiency of rectification
Rr=0.812/(1+(2*Rf/RL))
//PIV across the non-conducting diode
PIV=Vm
//Percentage regulation
%reg=(2*Rf/RL)*100
//Peak load current
Im=Vm/(2*Rf+RL)
//DC load current
Idc=2*Im/%pi
//Dc current through each diode
Idc1=Idc/2
//RMS current through each diode
Irms1=Im/2
printf("dc output voltage \n%f volt\n",Vdc)
printf("Ripple factor \n%f\n",r)
printf("Efficiency of rectification \n%f\n",Rr)
printf("PIV across non-conducting diode \n%f volt \n",PIV)
printf("percentage regulation \n%f\n",%reg)
printf("Peak diode current \n%f ampere\n",Im)
printf("dc load current \n%f ampere\n",Idc)
printf("dc current through each diode \n %f ampere\n",Idc1)
printf("RMS current through each diode \n %f ampere\n",Irms1)
