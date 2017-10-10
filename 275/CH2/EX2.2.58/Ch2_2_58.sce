clc
disp("Example 2.58")
printf("\n")
disp("Design a voltage regulator using zener diode to meet following specification")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//unregulated dc input voltage
Vimin=20
Vimax=30
//regulated dc output voltage
Vo=10
//minimum zener current
Izmin=2*10^-3
//maximum zener current
Izmax=100*10^-3
//load current
ILmin=0
ILmax=25*10^-3
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
printf("load resistance %d ohm \n",RL)