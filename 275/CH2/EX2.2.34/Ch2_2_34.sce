clc
disp("Example 2.34")
printf("\n")
disp("Calculate Ripple factor,DC output voltage,DC load current,PIV,RMS output ripple voltage")
printf("Given\n")
Vm=311.13
f=50
c=200*10^-6
RL=1000
//Ripple factor
r=1/(2*sqrt(3)*RL*f*c)
//dc output voltage
Vdc=Vm/(1+(1/(2*f*c*RL)))
//DC load current
Idc=Vdc/RL
//peak inverse voltage
PIV=Vm
//RMS ripple voltage on capacitor
Vac=r*Vdc
printf("ripple factor \n%f\n",r)
printf("dc output voltage \n%f volt\n",Vdc)
printf(" DC load current \n%f ampere\n",Idc)
printf("PIV across the diode \n%f volt\n",PIV)
printf("RMS ripple voltage on capacitor \n%f volt \n",Vac)
