clc
disp("Example 2.21")
printf("\n")
disp("Find the load current and rms value of input current")
printf("Given\n")
V2=100
Rf=50
RL=950
//secondary voltage
Vm=sqrt(2)*V2
//DC load current
Idc=(2*Vm)/(%pi*(Rf+RL))
//RMS input current is same as RMS load current
Im=(Idc*%pi)/2
Irms=Im/sqrt(2)
printf("The load current=\t%f ampere\n",Idc)
printf("RMS load current=\t%f ampere\n",Irms)
