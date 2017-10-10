//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter3
//example 3.2
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vsrms=110;                 //source voltage of the circuit in volts
Vm=Vsrms*(2)^(1/2);       //maximum voltage in volts
R=2;                     //resistance in ohm
alpha1=45;              //triggering angle in degree
alpha2=90;             //triggering angle in degree
//when a1=45
disp('case 1')
Vrms=(Vsrms/(2)^(1/2))*(1-(alpha1*(%pi/180)/%pi)+(sind(2*alpha1)/(2*%pi)))^(1/2);
disp(Vrms,'rms voltage across the load resistance in volt is:')
Irms=Vrms/R ;
disp(Irms,'rms current of the resistance in ampere is:')
Vscr=-(Vm/(2*%pi))*(1+cosd(alpha1));
disp(Vscr,'average voltage drop across the SCR in volt is:')
//when a2=90
disp('case 2')
Vrms1=(Vsrms/(2)^(1/2))*(1-(alpha2*(%pi/180)/%pi)+(sind(2*alpha2)/(2*%pi)))^(1/2);
disp(Vrms1,'rms voltage across the load resistance in volt is:')
Irms1=Vrms1/R ;
disp(Irms1,'rms current of the resistance in ampere is:')
Vscr1=-(Vm/(2*%pi))*(1+cosd(alpha2));
disp(Vscr1,'average voltage drop across the SCR in volt is:')
