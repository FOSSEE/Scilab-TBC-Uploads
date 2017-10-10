clc;
PP=36; //Vpp
RL=75; //Ohm
PLmax=PP^2/(8*RL); //Watt
disp('W',PLmax,"PLmax=");//The answers vary due to round off error
