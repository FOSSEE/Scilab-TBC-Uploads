
//scilab 5.4.1
//windows 7 operating system
//chapter 6:Diode Circuits
clc;
clear;
//given data
Vrms=20;    //in volts
Vm=20*1.41; //in volts
Rf=50;  //forward resistance in ohms
RL=1200;    //load resistance in ohms

Im=Vm/(Rf+RL);  //peak load current
format("v",7)
disp('A',Im,'Im=');

Idc=Im/%pi;     //dc load current
format("v",8)//to set the current printing format with the specified parameter type
disp('A',Idc,'Idc=');

Irms=Im/2;//rms load current
Irms1=sqrt((Irms^2)-(Idc^2))//rms ac load current
format("v",8)
disp('A',Irms1,'rms ac load current is=');

Vdc=Idc*Rf;     //Dc voltage across the diode
format("v",6)
disp('V',Vdc,'Dc voltage across the diode=');

Pdc=Idc*Idc*RL;     //Dc output power
format("v",6)
disp('W',Pdc,'Dc output power=');

n=40.6/(1+(Rf/RL));     //conversion efficiency
format("v",5)
disp('%',n,'conversion efficiency=');

s=Rf*100/RL;        //Pertcentage regulation
format("v",5)
disp('%',s,'Pertcentage regulation=');

//end

