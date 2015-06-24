clc
disp("Example 3.85")
printf("\n")
disp("Find the stability factor & change in Ic for increase in temperature of base bias circuit")
printf("Given\n")
//given
hFE=100
Rc=2.2*10^3
Rb=470*10^3
Icbo1=15*10^-9
T1=25
T2=105
//stability factor
S=1+hFE
//Change in collector to base reverse saturation current(delIcbo)
n=(T2-T1)/10
Icbo2=Icbo1*2^8
delIcbo=Icbo2-Icbo1
//Change in Ic for increase in temperature
delIc=S*delIcbo
printf("Stability factor is \n%f\n",S)
printf("the change in collector current is \n%f ampere\n",delIc)
