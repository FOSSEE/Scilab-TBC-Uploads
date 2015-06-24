clc
disp("Example 3.67")
printf("\n")
disp("Design a Collector to base bias circuit")
printf("Given\n")
//Given
Vce=10
Ic=3*10^-3
Vbe=0.7
Vcc=25
hFE=80
//base current
Ib=Ic/hFE
//collector resistance
Rc=(Vcc-Vce)/(Ic+Ib)
//base current
Rb=(Vce-Vbe)/Ib
printf("base current %f ampere \n",Ib)
printf("Collector resistance %f ohm \n",Rc)
printf("base resistance %f ohm \n",Rb)