clc
disp("Example 3.46")
printf("\n")
disp("For the circuit shown in example 3.46 draw a DC load line")
printf("Given\n")
//to find Vce value when Ic=0
Ic1=0
//given
Rc=12*10^3
Vcc=20
//from circuit
Vce=Vcc-(Ic1*Rc)
//to find Ic when Vce=0
Vce1=0
Ic=Vcc/Rc
//To draw DC load line
Vceg=[Vce, Vce1]
Icg=[Ic1,Ic]
plot2d(Vceg,Icg)
xlabel("Vce in volt")
ylabel("Ic in ampere")
xtitle("DC Load line for Rc=12Kohm")
