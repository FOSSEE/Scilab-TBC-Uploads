//chapter 13
//example 13.7
//page 565
printf("\n")
printf("given")
hfe=100;Vbe=.7;Ic1=1*10^-3;Ic2=Ic1;Ic3=Ic2;Ic4=Ic3;Vee=10;Vce=3;Acl=33;
disp("different resistor value of circuit")
R1=Vbe/((10*Ic1)/hfe)
R3=(Vee-Vbe)/(Ic1+Ic2)
Vr2=Vee+Vbe-Vce
R4=Vr2/Ic1
R2=R4;
R7=(Vr2-Vbe)/(Ic3+Ic4)
R8=Vee/Ic3
R6=6.8*10^3;
R5=(Acl-1)*R6