clc;
PP=15; //Vpp(peak to peak voltage Volt)
RL=10; //Ohm
PLmax=PP^2/(8*RL); //Watt
disp('W',PLmax,"PLmax=");//The answers vary due to round off error

