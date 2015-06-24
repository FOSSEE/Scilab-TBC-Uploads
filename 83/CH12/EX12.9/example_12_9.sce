//Chapter 12
//Example 12.9
//page 479
//To calculate critcal clearing angle
clear;clc;
Pmax1=2; // prefault(2 lines)
Pmax2=0.5; //deuring fault
Pmax3=1.5; //post fault(1 line)
Pm=1; //initial loading

delta0=asin(Pm/Pmax1);
delta_max=%pi-asin(Pm/Pmax3);

//to find critical angle,using eq.12.67
delta_cr=acos((Pm*(delta_max-delta0)-Pmax2*cos(delta0)+Pmax3*cos(delta_max))/(Pmax3-Pmax2));
printf('Pmax1=%0.1f PU\t Pmax2=%0.2f PU\t Pmax3=%0.2f PU\n\n',Pmax1,Pmax2,Pmax3);
printf('Delta0=%0.3f rad\n\n',delta0);
printf('Delta_max=%0.3f rad\n\n',delta_max);
printf('Delta_cr=%0.3f rad =%0.2f deg\n\n',delta_cr,delta_cr*180/%pi);
