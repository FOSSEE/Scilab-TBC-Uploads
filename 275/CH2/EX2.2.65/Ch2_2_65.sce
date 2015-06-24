clc
disp("Example 2.65")
printf("\n")
disp("Calculate circuit current when supply voltage drops to 27V, select suitable components")
printf("Given\n")
printf("1 Resistance are in ohms \n 2 Current are in ampere \n 3 voltage sources are in volt\n")
//input voltage
Vi=30
//output voltage
Vo=9
//test current(lies b/w Izmin & Izmax)
Izt=20*10^-3
//load current(assume zero, no load operation)
IL=0
//circuit current
I=Izt
//series resistance
R=(Vi-Vo)/I
//zener current when Vi drops to 27V
Vi1=27
Iz=(Vi1-Vo)/R
printf("Zener current is %f ampere\n",Iz)