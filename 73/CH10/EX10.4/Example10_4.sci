//Chapter 10_Special Purpose Amplifier
//Caption : Power Output
//Example10.4: For the amplifier of Example10.3, find the power output level at which the power dissipation will bw maximum and the maximum power dissipation.
//Solution:
clear;
clc;
Vcc=15;//power supply in volt
Rl=8;//load resistance in ohm
//since Pd=2*Vcc/%pi*sqrt(2*Po/Rl)-Po
//to determine the value of Po at which Pd is maximum we differentiate above equation and equate to zero,we find Po as
Po=2*Vcc^2/((%pi)^2*Rl);
// there fore maximum power dissipated is
Pdmax=2*Vcc/%pi*sqrt(2*Po/Rl)-Po;
disp('W',Po,'The power output level for maximum power dissipation is:')
disp('W',Pdmax,'Maximum power dissipation for corresponding output power level is;')