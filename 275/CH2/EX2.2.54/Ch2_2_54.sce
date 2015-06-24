clc
disp("Example 2.54")
printf("\n")
disp("Design the Zener Diode Voltage regulator for given specification")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//unregulated dc input voltage
Vimin=8
Vimax=12
//regulated dc output voltage
Vo=5
//minimum zener current
Izmin=5*10^-3
//maximum zener current
Izmax=80*10^-3
//load current
ILmin=0
ILmax=20*10^-3
//load resistance
RL=Vo/ILmax
//maximum Resistance
Rmax=(Vimin-Vo)/(Izmin+ILmax)
//minimum resistance
Rmin=(Vimax-Vo)/(Izmax+ILmin)
//Required resistance
R=(Rmax+Rmin)/2
printf("minimum resistance %d ohm \n",Rmin)
printf("maximum resistance %d ohm \n",Rmax)
printf("required resistance %d ohm \n",R)

