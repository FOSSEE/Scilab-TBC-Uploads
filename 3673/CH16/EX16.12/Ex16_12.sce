//Example 16_12 page no:768
clc;
//given
Y11=1/2;
Y22=5/8;
Y21=-1/4;
Y12=-1/4;
Ys=1;
I2_V2=((Y22*Ys)+(Y22*Y11)-(Y21*Y21))/(Ys+Y11);
Z22=1/I2_V2;
disp(Z22,"the output impedance of the network Z22 is (in ohm)");
//in text book output unit is wrongly mentioned
//in text book output is displayed in ratio here the same value is displayed in fraction
