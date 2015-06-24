//Exa 1.10
clc;
clear;
close;
//given data
VBE=0.7;//in Volts
BETA=120;//unitless
disp("as BETA>>1");
VCC=10;//in Volts
//KCL at Node a
disp("Writing KCL at Node (a) gives :");
disp("IR=IC1+I");
disp("IR=IC1+IB1+I1");
disp("IR=IC1+IC1/BETA+I1");
disp("IR=IC1(1+1/BETA)+I1");
disp("as BETA>>1");
disp("IR=IC1+I1");
//KCL at Node b
disp("Writing KCL at Node (b) gives :");
disp("I1=IC2+I2");
disp("I1=IC2+IB2+IB3");
disp("I1=IC2+IC2/BETA+IB3");
disp("IR=IC2(1+1/BETA)+IB3");
disp("as BETA>>1");
disp("I1=IC2+IB3");
//solving both equations
disp("IR=IC1+IC2+IB3");
disp("IR=2IC+IB3")
//As transistors are matched
VBE1=VBE;//in Volts
VBE2=VBE;//in Volts
VBE3=VBE;//in Volts
disp("As transistors are matched. IC1=IC2=IC")
disp("IR=2IC+IC3/BETA=2IC+IC/BETA");
disp("Due to current Mirror formed. IC1=IC2=IC3=IC")
disp("IR=IC(2+1/BETA)");
disp("as BETA>>1");
disp("IR=2*IC");
IR=(VCC-VBE)/(3.6);//in mA
IC=IR/2;//in mA
Iload=IC;//in mA
disp(Iload,"Load current in the circuit in mA is :")
