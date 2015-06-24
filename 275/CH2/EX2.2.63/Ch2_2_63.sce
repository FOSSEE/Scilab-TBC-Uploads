clc
disp("Example 2.63")
printf("\n")
disp("Design a 6V dc reference source to operate from a 16v supply")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//output voltage
Vo=6
//input voltage
Vi=16
//zener power
Pzmax=400*10^-3
//zener current maximum
Izmax=Pzmax/Vo
//I=Iz+IL & ILmin=0, we have Izmax=I
//take Izmin=5*10^-3
Izmin=5*10^-3
//maximum load current
ILmax=Izmax-Izmin
//load resistance
RLmin=Vo/ILmax
//series resistance
R=(Vi-Vo)/Izmax
printf("maximum load current %d ampere\n",ILmax)
printf("Load resistance %d ohm\n",RLmin)
printf("sereies resistance %d ohm\n",R)
