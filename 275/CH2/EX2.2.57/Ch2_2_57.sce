clc
disp("Example 2.57")
printf("\n")
disp("Calculate the value of series resistance & Zener diode current when load is 1200ohm")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//Input voltage
Vi=32
//Zener diode voltage
Vz=24
//maximum power
Pzmax=600*10^-3
//output voltage
Vo=24 
//since Vi has no variation
Vimax=32
Vimin=Vimax
//Zener current
Izmax=Pzmax/Vz
//series resistance
ILmin=0
R=(Vimax-Vo)/(Izmax+ILmin)
//Diode current
RL=1200
IL=Vo/RL      //load current
I=(Vi-Vo)/R    //total current
IZ=I-IL
printf("The diode current=\t%f ampere\n",IZ)
