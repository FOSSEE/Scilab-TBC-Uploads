//example 1.3
clc;funcprot(0);
//Initialization of Variable
Vni=0//non inverting voltage
Vinv=0;//inverting voltage
Vri1=1;
Vri2=15;
Ri1=5600//resistance
Ri2=470000;
Rf=10000//load resistance
//calculation
Ir1=Vri1/Ri1;
disp(Ir1*1e6,"current through Ri1 in microAmp:")
Ir2=Vri2/Ri2;
disp(Ir2*1e6,"current through Ri2 in microAmp:")
Irf=(Vri1/Ri1)+(Vri2/Ri2);
disp(Irf*1e6,"current through Rf in microAmp:")
Vr=Irf*Rf;
disp(Vr,"voltage dropped in V:")
Vo1=-Vr;
disp(Vo1,"output voltage 1 in V:")
Vo=Irf*Rf;
disp(Vo,"output voltage in V:")
clear()
