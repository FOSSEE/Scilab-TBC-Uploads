clc
disp("Example 2.29")
printf("\n")
disp("Calculate Average output voltage,avg load current,frequency of output waveform,dc power output")
printf("Given\n")
Vm=141.42
Rf=0    //Ideal diodes
RL=100
f=50
//Average output voltage
Vdc=(((2*Vm)/(%pi))/(1+(2*Rf/RL)))
//Average load current
Idc=Vdc/RL
//frequency of output waveform
Fout=2*f
//dc power output
Pdc=Idc^2*RL
printf("average output voltage \n%f volt\n",Vdc)
printf("average load current \n%f ampere\n",Idc)
printf("frequency of output waveform \n%f hz\n",Fout)
printf("dc output power \n %f watt\n",Pdc)
