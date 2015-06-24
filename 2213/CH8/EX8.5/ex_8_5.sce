//Example 8.5: Current drawn
clc;
clear;
close;
format('v',5)
//given data :
V=500;// in volts
Vm=40;// in kmph
Ft=1800;// in N
Rm=0.4;// in ohm
Lm=3200;// losses per motor in watt
Mo=(Ft*Vm*1000)/3600;
Cl=3200;// consatant losses in watt
// formuls: Mi=Po+Cl+C_losses
//C_losses=I^2*Rm
//Mi=V*I
//I1=(V+sqrt(V^2-(4*Rm*(Mo+Cl))))/(2*Rm);leaving as gives a very high value
I1=(V-sqrt(V^2-4*Rm*(Mo+Cl)))/(2*Rm);
disp(I1,"Current drawn by each motor,(A) =");
It=I1*2;
disp(It,"Total current drawn,(A) = ")
