//Ex15_2 Pg-774
clc

Ic=100 //carrier current in A
m=80/100 //modulation of 80%

disp("Total current = carrier current*(1+m^2/2)")
It=Ic*sqrt(1+m^2/2) //total power
printf("               = %.1f A \n",It)

change_I=It-Ic //change in current
printf("Therefore, increase in current due to modulation = %.1f A",change_I)
