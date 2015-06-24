
//scilab 5.4.1
//windows 7 operating system
//chapter 6:Diode Circuits
clc;
clear;
//given data
Rf=100; //forward resistance in ohms
Rl=1000; //load resistance in ohms
n=10;   //Primary to secondary turns ratio
Vp=240; //Primary input V(rms)

Vm=24*(2^(1/2))/2;   //secondary peak voltage from cenre tap
Vs=Vp/n;    //Secondary input voltage
Im=Vm/(Rf+Rl);  //peak current through the resistance in A
Idc=(2*Im)/%pi;  //DC Load current in A
format("v",8)
disp('A',Idc,'DC load current Idc=',);
I=Idc/2;    //Direct current supplied by each diode in A
format("v",7)
disp('A',I,'Direct current supplied by each diode Idc=',);
Pdc=Idc*Idc*Rl; //DC power output
format("v",6)
disp('W',Pdc,'Pdc=');
Irms=Im/(2^(1/2));
Vrp=sqrt((Irms*Irms)-(Idc*Idc))*Rl;   //Ripple voltage in V
format("v",7)
disp('V',Vrp,'Ripple voltage Vrp=');


M=(Rf*100)/Rl;    //percentage regulation
disp('%',M,'Percentage regulation=');
n=81.2/(1+(Rf/Rl));  //Efficiency of rectification
format("v",5)
disp('%',n,'Efficiency of rectification');

//end
