//Ex4_5
//Refer fig.4.8
clc
IDQmax=5*10^(-3)
disp("IDQmax = "+string(IDQmax)+" ampere") //  drain current for JFET for maximum transfer characteristics
IDmax=IDQmax// maximum drain current will be given by IDQmax
IDQmin=3*10^(-3)
disp("IDQmin = "+string(IDQmin)+" ampere") //  drain current for JFET for minimum transfer characteristics 
VDD=(20)
disp("VDD= "+string(VDD)+" volts") // Drain voltage supply
VDSmin=(6)
disp("VDSmin= "+string(VDSmin)+" volts") // minimum Drain to source voltage supply
ID=2.4*10^(-3)
disp("ID = "+string(ID)+" ampere") //  drain current chosen for operation within max and min limits 
VGG=3
disp("VGG= "+string(VGG)+" volts") // Gate voltage from fig.
Ri=100*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  //eqivalent input resistance
RF=(VGG-0)/(ID-0)
disp("RF= (VGG-0)/(ID-0)= "+string(RF)+ " ohm")  //calculation for  feedback resistance 
R1=VDD*Ri/VGG //using formulae VGG=VDD*Ri/R1
disp("R1= VDD*Ri/VGG= "+string(R1)+ " ohm")  //calculation for  first resistance R1 at input side
R2=R1*VGG/(VDD-VGG)
disp("R2= R1*VGG/(VDD-VGG)= "+string(R2)+ " ohm")  //calculation for  second resistance R2 at input side
RL=[((VDD-VDSmin)/IDmax)-RF] // using formulae VDD=IDmax(RL+RF)+VDSmin
disp("RL=[((VDD-VDSmin)/IDmax)-RF]="+string(RL)+ " ohm")  //Load resistance calculation




