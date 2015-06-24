clc
disp("Example 3.55")
printf("\n")
disp("Calculate transistor hFE & new Vce level for hFE=100 of base bias ciruit")
printf("Given\n")
//given
Vcc=24
Rb=390*10^3
Rc=3.3*10^3
Vce=10
//Find Ic
Ic=(Vcc-Vce)/Rc  //from circuit
//find Ib
Ib=(Vcc-Vbe)/Rb  //from ciruit
//the value of hFE
hFE=Ic/Ib
//to find Vce when hFE=100
hFE1=100
Ic1=hFE1*Ib
Vce1=Vcc-(Ic1*Rc)
printf("Value of hFE is \n%f\n",hFE)
printf("New value of Vce is \n%f volt\n",Vce1)
