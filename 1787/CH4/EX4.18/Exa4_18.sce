//Exa4.18
clc;
clear;
close;
//given data
RL=10;//in Kohm
Rs=5;//in Kohm
Vin=100;//in Volts
disp("Removing the zener diode from the circuit, We have : V = Vin*RL/(RL+Rs)");
V=Vin*RL/(RL+Rs);//in Volt
disp(V,"Voltage V in volts = ");
disp("V > Vz So zener diode is in ON stste.");
VZ=50;//in Volts
VL=VZ;//in volts
//Apply KVL
VR=100-50;//in Volts
VR=50;//in Volts
disp(VR,"Hence the voltage dropp across the 5 Kohm resistor in Volts is : ");