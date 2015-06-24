clc
disp("Example 3.87")
printf("\n")
disp("Find the stability factor & change in Ic for increase in temperature of Voltage divider bias circuit")
printf("Given\n")
//given
hFE=100
Rc=1.2*10^3
R1=33*10^3
R2=12*10^3
Re=10^3
Icbo1=15*10^-9
T1=25
T2=105
//thevenin resistance
Rt=(R1*R2)/(R1+R2)
//stability factor
S=(1+hFE)/(1+((hFE*Re)/(Re+Rt)))
//Change in collector to base reverse saturation current(delIcbo)
n=(T2-T1)/10
Icbo2=Icbo1*2^8
delIcbo=Icbo2-Icbo1
//Change in Ic for increase in temperature
delIc=S*delIcbo
printf("stability factor %f \n",S)
printf("change in Ic %f ampere\n",delIc)