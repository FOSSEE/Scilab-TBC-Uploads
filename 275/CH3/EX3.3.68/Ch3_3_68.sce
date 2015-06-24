clc
disp("Example 3.68")
printf("\n")
disp("Calculate required base resistance for Collector to base bias circuit")
printf("Given\n")
//given
Vcc=30
Vce=7
Vbe=0.7
Rc=8.2*10^3
hFE=100
//base current
Ib=(Vcc-Vce)/(Rc*(1+hFE))
//base resistance
Rb=(Vce-Vbe)/Ib
printf("base resistance is \n%f ohm\n",Rb)
