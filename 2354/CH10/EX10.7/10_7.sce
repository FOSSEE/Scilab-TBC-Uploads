//example 10.7
clc; funcprot(0);
// Initialization of Variable
m1dot=4.5e7;
hf1=159.21;
hf2=125.79;
ha4=308.2;
ha3=298.2;
w4=0.0327;//humidity
hg4=2565.3;
hg3=2547.2;
w3=0.0068;//humidity
hf5=83.96;
madot=m1dot*(hf1-hf2)/(ha4-ha3+w4*hg4-w3*hg3-(w4-w3)*hf5);
m5dot=madot*(w4-w3);
disp(m5dot,"mass flow rate in kg/h");
clear()
