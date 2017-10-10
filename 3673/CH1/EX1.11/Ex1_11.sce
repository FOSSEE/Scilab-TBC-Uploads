//Example 1_11 page no:14
clc
V=100;//supply voltage
R1=1;//resistance in kilo_ohm
R2=5;//resistance in kilo_ohm
R3=4;//resistance in kilo_ohm
v=V*(R2+R3)/(R1+R2+R3);
disp(v,"Voltage across A and B (in volts)")
