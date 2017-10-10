//Example_a_5_9 page no:209
clc;
V=100;
f=50;
R1=100;
L1=0.5;
R2=330;
L2=1;
Xl1=2*%pi*f*L1;
Xl2=2*%pi*f*L2;
Z1=sqrt(R1^2+Xl1^2);
Z2=sqrt(R2^2+Xl2^2);
I1=V/Z1;
I2=V/Z2;
Vr1=I1*R1;
Vl1=I1*Xl1;
Vr2=I2*R2;
Vl2=I2*Xl2;
theta_1=atand(Xl1/R1);
theta_2=atand(Xl2/R2);
disp(Vr1,"the voltage across resistor R1 is (in V)");
disp(Vl1,"the voltage across inductor L1 is (in V)");
disp(Vr2,"the voltage across resistor R2 is (in V)");
disp(Vl2,"the voltage across inductor L2 is (in V)");
disp(theta_2,theta_1,"the angle associated with each parallel branch are");
//phasor diagram cannot be drawn in scilab hence both X and Y axis values are required
//Vr2,Vl2 varies slightly hence I2 value is rounded off in text book
