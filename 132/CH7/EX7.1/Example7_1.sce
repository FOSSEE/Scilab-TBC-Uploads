//Example 7.1
//Program to Calculate
//(a)Collector Current
//(b)Collector-to-Emitter Voltage
clear;
clc ;
close ;
//Given Circuit Data
Vcc=9; //V
Rb=300*10^3; //Ohms
Rc=2*10^3; //Ohms
Beeta=50;
//Calculation
Ib=(Vcc)/Rb;
Ic=Beeta*Ib;
Icsat=Vcc/Rc;
Vce=Vcc-Ic*Rc;
//Displaying The Results in Command Window
printf("The different Parameters are \n\t Ib = %f uA .",Ib/10^(-6));
if Ic < Icsat then 
  disp("Transistor is not in Saturation");
  printf("\n\t Ic = %f mA .",Ic/10^(-3));
  printf("\n\t Vce = %f V .",Vce);
else   
  disp("Transistor is in Saturation");
   printf("\n\t Ic = %f mA .",Icsat/10^(-3));
   printf("\n\t Vce = %f V .",0);
end