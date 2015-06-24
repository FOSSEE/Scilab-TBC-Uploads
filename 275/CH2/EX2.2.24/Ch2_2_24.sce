clc
disp("Example 2.24")
printf("\n")
disp("Calculate Average load voltage,RMS load current,PIV,DC o/p power,Frequency of output waveform")
printf("Given\n")
V1=220
N1=10
N2=1
V2=V1*(N2/N1)
Vm=V2
Rf=20
RL=1000
w=314
f=w/(2*%pi)
//Average load voltage
Vdc=(((2*Vm)/(%pi))/(1+(Rf/RL)))
//RMS load current
Irms=Vm/(sqrt(2)*(Rf+RL))
//PIV across each diode
PIV=2*Vm
//dc output power
Pdc=Vdc^2/RL
//Frequency of output waveform
Fout=2*f
printf("average load voltage is \n%f volt\n",Vdc)
printf("RMS load current is \n%f ampere\n",Irms)
printf("PIV across each diode is \n %f volt\n",PIV)
printf("DC ouput power \n%f watt\n",Pdc)
printf("frequency of output waveform is \n%f hz\n",Fout)
