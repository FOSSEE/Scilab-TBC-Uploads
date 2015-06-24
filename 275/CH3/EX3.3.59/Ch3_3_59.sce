clc
disp("Example 3.59")
printf("\n")
disp("Calculate Base resistance for base bias circuit")
printf("Given\n")
//given
Vcc=20
Vce=5
Rc=6.8*10^3
hFE=120
Vbe=0.7
//collector current
Ic=(Vcc-Vce)/Rc
//base current
Ib=Ic/hFE
//the required base resistance
Rb=(Vcc-Vbe)/Ib
printf("The base resistance \n%f ohm\n",Rb)
