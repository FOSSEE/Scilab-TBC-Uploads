//Example_a_3_23 page no:151
clc;
R=2;
Vi=-1;
Voc=-4*Vi;
Isc=10;
Rth=Voc/Isc;
i2=Voc/(Rth+R);
disp(i2,"the current throught 2 ohm resistor is (in A)");
