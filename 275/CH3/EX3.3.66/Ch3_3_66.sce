clc
disp("Example 3.66")
printf("\n")
disp("Design a Collector to base bias circuit")
printf("Given\n")
//Given
Vce=5
Ic=5*10^-3
Vbe=0.7
Vcc=15
hFE=100
//base current
Ib=Ic/hFE
//collector resistance
Rc=(Vcc-Vce)/(Ic+Ib)
//base resistance
Rb=(Vce-Vbe)/Ib
printf("base current %f ampere \n",Ib)
printf("Collector resistance %f ohm \n",Rc)
printf("base resistance %f ohm \n",Rb)