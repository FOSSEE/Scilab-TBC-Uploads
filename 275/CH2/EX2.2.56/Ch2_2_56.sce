clc
disp("Example 2.56")
printf("\n")
disp("Design a zener diode voltage regulator to meet following specification")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//dc input voltage
Vimin=20
Vimax=Vimin
//dc output voltage
Vo=10
//load current
ILmin=0
ILmax=20*10^-3
//minimum zener current
Izmin=10*10^-3
//maximum zener current
Izmax=100*10^-3
//load resistance
RLmin=Vo/ILmax
//maximum Resistance
Rmax=(Vimin-Vo)/(Izmin+ILmax)
//minimum resistance
Rmin=(Vimax-Vo)/(Izmax+ILmin)
//Required resistance
R=(Rmax+Rmin)/2
printf("minimum resistance %d ohm \n",Rmin)
printf("maximum resistance %d ohm \n",Rmax)
printf("required resistance %d ohm \n",R)
printf("load resistance %d ohm \n",RLmin)

