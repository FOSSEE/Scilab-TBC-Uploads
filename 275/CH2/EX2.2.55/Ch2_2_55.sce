clc
disp("Example 2.55")
printf("\n")
disp("Design a zener diode voltage regulator to meet following specification")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//unregulated dc input voltage
Vimin=13
Vimax=17
//Load current
ILmin=0
ILmax=10*10^-3
//regulated output voltage
Vo=10
//minimum zener current
Izmin=5*10^-3
//Maximum power dissipation
Pzmax=500*10^-3
//maximum zener current
Izmax=Pzmax/Vo
//maximum Resistance
Rmax=(Vimin-Vo)/(Izmin+ILmax)
//minimum resistance
Rmin=(Vimax-Vo)/(Izmax+ILmin)
//Required resistance
R=(Rmax+Rmin)/2
//load resistance
RLmin=Vo/ILmax
printf("minimum resistance %d ohm \n",Rmin)
printf("maximum resistance %d ohm \n",Rmax)
printf("required resistance %d ohm \n",R)
printf("load resistance %d ohm \n",RLmin)