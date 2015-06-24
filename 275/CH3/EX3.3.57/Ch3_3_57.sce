clc
disp("Example 3.57")
printf("\n")
disp("Design a Base bias circuit")
printf("Given\n")
//given
Vce=5
Ic=5*10^-3
Vcc=15
hFE=100
//Value of Rc
Rc=(Vcc-Vce)/Ic
Ib=Ic/hFE
//value of Rb
Vbe=0.7
Rb=(Vcc-Vbe)/Ib
printf("The value of Rc=%f ohm\nRb=%f ohm\n",Rc,Rb)

