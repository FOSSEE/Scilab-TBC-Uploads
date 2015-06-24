clc
disp("Example 2.60")
printf("\n")
disp("Design a zener voltage regulator to meet following specification")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//DC input voltage(10V[+-]20%)
Vimin=10-2
Vimax=10+2
//DC output voltage
Vo=5
//Load current
ILmax=20*10^-3
ILmin=0
//zener current
Izmax=80*10^-3
Izmin=5*10^-3
//maximum Resistance
Rmax=(Vimin-Vo)/(Izmin+ILmax)
//minimum resistance
Rmin=(Vimax-Vo)/(Izmax+ILmin)
//Required resistance
R=(Rmax+Rmin)/2
//load resistance
RL=Vo/ILmax
printf("minimum resistance %d ohm \n",Rmin)
printf("maximum resistance %d ohm \n",Rmax)
printf("required resistance %d ohm \n",R)
printf("load resistance %d ohm \n",RL)
