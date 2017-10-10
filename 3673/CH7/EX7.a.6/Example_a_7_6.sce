//Example_a_7_6 page no:275
clc;
V=20;
Vamag=16.27;
Vaang=18.91;
I2mag=Vamag/5.38;
I2ang=Vaang-68.19;
P2=I2mag^2*2;
disp(P2,"the power dissipated at 2 ohm resistor is (in W)");
I3=-0.65-(%i*1.58);
I3mag=sqrt(real(I3)^2+imag(I3)^2);
P3=I3mag^2*3;
disp(P3,"the power dissipated in the 3 ohm resistor is (in W)");
P=-V*I3mag*cosd(142);
disp(P,"the power delivered by the source is (in W)");
