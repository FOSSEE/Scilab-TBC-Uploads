clc
disp("Example 2.11")
printf("\n")
disp("Calculate Peak,ac,dc load current,dc diode voltage,total input power,percentage regulation of HW Rectifier")
printf("Given\n")
Rf=20
RL=1000
N1=1
N2=N1
V1=110
V2=V1                  //since (V1/V2)=(N1/N2)
Vm=sqrt(2)*V2
Im=Vm/(Rf+RL)          //peak load current
Idc=Im/%pi             //DC load current
Irms=Im/2              //AC load current
V!dc=-Idc*RL           //DC diode Voltage
Pi=(Irms)^2*(Rf+RL)    //Total power input to circuit
%reg=(Rf/RL)*100        //percentage regulation
printf("Peak,DC,AC load current are =\n%f ampere\n%f ampere\n%f ampere\n",Im,Idc,Irms)
printf("DC Diode voltage =\n%f volt\n",V!dc)
printf("Total power input to circuit =\n%f watt\n",Pi)
printf("percentage regulation =\n%f\n",%reg)
