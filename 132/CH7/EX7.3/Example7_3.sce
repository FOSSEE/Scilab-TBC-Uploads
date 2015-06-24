//Example 7.3
//Program to Calculate Operating Point Coordinates of the Circuit
clear;
clc ;
close ;
//Given Circuit Data
Vcc=10; //V
Rb=100*10^3; //Ohms
Rc=1*10^3; //Ohms
Beeta=150;
//Calculation
Ib=(Vcc)/Rb;
Ic=Beeta*Ib;
Icsat=Vcc/Rc;
Vce=Vcc-Ic*Rc;
//Displaying The Results in Command Window
printf("The Operating Point Coordinates of the Circuit are :\n\t Ib = %f uA .",Ib/10^(-6));
if Ic < Icsat then 
  disp("Transistor is not in Saturation");
  printf("\n\t Ic = %f mA .",Ic/10^(-3));
  printf("\n\t Vce = %f V .",Vce);
else   
  disp("Transistor is in Saturation");
   printf("\n\t Ic = %f mA .",Icsat/10^(-3));
   printf("\n\t Vce = %f V .",0);
end