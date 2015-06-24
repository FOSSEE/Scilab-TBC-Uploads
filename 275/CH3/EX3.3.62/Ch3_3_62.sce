clc
disp("Example 3.62")
printf("\n")
disp("Determine the hFE and new Vce for hFE=50 for Collector to base bias")
printf("Given\n")
//given
Vcc=15
Vce=5
Vbe=0.7
Rb=82*10^3
Rc=5.6*10^3
//base current
Ib=(Vce-Vbe)/Rb
//hFE value
hFE=((Vcc-Vbe)/(Ib*Rc))-(Rb/Rc)-1
//to find Vce for hFE=50
hFE1=50
Ib1=(Vcc-Vbe)/(Rb+(1+hFE1)*Rc)
Vce1=(Ib1*Rb)+Vbe
printf("The hFE is \n%f\n",hFE)
printf("new Vce is \n%fvolt \n",Vce1)
