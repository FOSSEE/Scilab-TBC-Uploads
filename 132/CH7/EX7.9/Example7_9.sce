//Example 7.9
//Program to Calculate new Q points for 
//Minimum and Maximum value of Beeta
clear;
clc ;
close ;
//Given Circuit Data
Vcc=6; //V
Vbe=0.3; //V
Rc=1*10^3; //Ohms
Rb=10*10^3; //Ohms
Re=100; //Ohms
Beeta1=50;
Beeta2=200;
//Calculation CASE-1: Minimum Emitter Current & corresponding Vce
Iemin=(Vcc-Vbe)*(Beeta1+1)/(Rb+(Beeta1+1)*Re);
Icmin=Iemin;
Vcemin=Vcc-(Rc+Re)*Iemin;
//Calculatioen CASE-2: Maximum Emitter Current & corresponding Vce
Iemax=(Vcc-Vbe)*(Beeta2+1)/(Rb+(Beeta2+1)*Re);
Icmax=Iemax;
Vcemax=Vcc-(Rc+Re)*Iemax;
//Displaying The Results in Command Window
Icsat=Vcc/(Rc+Re);
//Displaying The Results in Command Window
printf("For Beeta=50 :\n\t");
if Icmin < Icsat then 
  disp("Transistor is not in Saturation");
  printf("\n\t Ic = %f mA .",Icmin/10^(-3));
  printf("\n\t Vc = %f V .",Vce);
else   
  disp("Transistor is in Saturation");
   printf("\n\t Ic(sat) = %f mA .",Icsat/10^(-3));
   printf("\n\t Vc(sat) = %f V .",0);
end
printf("\nFor Beeta=200 :\n\t");
if Icmax < Icsat then 
  disp("Transistor is not in Saturation");
  printf("\n\t Ic = %f mA .",Icmax/10^(-3));
  printf("\n\t Vc = %f V .",Vce);
else   
  disp("Transistor is in Saturation");
   printf("\n\t Ic(sat) = %f mA .",Icsat/10^(-3));
   printf("\n\t Vc(sat) = %f V .",0);
end