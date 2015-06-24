clc
disp("Example 2.66")
printf("\n")
disp("Calculate the effect of a 10% variation supply voltage on diode current")
printf("Given\n")
//input voltage
Vi=25
//output voltage
Vo=10
//test current(lies b/w Izmin & Izmax)
Izt=20*10^-3
//load current(assume zero, no load operation)
IL=10^-3
//select R such that
Iz=Izt
//series resistance
R=(Vi-Vo)/(Iz+IL)
//maximum input voltage 
Vimax=25+2.5
//minimum input voltage
Vimin=25-2.5
//ciruit current
I1=(Vimax-Vo)/R
//zener current when Vimax
Izmax=I1-IL
//cicuit current when Vimin
I2=(Vimin-Vo)/R
//zener current when Vimin
Izmin=I2-IL
printf("circuit current when Vimax is %f ampere\n",I1)
printf("zener current when Vimax is %f ampere\n",Izmax)
printf("circuit current when Vimin is %f ampere\n",I2)
printf("zener current when Viin is %f ampere\n",Izmin)
