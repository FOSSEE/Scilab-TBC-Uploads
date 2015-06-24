
//scilab 5.4.1
//windows 7 operating system
//chapter 6:Diode Circuits
clc;
clear;
//given data
Rf=50;  //forward resistance in ohms
Rl=2500; //load resistance in ohms
Vp=30;   //Primary input V(rms)
Vm=30*sqrt(2);

Im=Vm/(2*Rf+Rl);    //peak load current in A
Idc=2*Im/%pi;

Vdc=Idc*Rl;     //DC load voltage
disp('V',Vdc,'Vdc=');
Irms=Im/sqrt(2);
Vrp=Rl*sqrt(((Irms*Irms)-(Idc*Idc)));   //Ripple voltage in V
disp('V',Vrp,'Ripple voltage Vrp=');

M=(2*Rf/Rl)*100;    //Percentage regulation
disp('%',M,'Percentage regulation=');

//end
