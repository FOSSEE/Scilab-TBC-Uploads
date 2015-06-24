// Example 1.17
clc;
clear;
close;
// Given data
format('v',7);
VCC= 9;// in V
R1= 12;// in kΩ
VBE= 0.7;// in V
Beta= 100;
I_REF= (VCC-2*VBE)/R1;//reference current in mA
disp(I_REF,"The reference current in mA is : ")
Iout= I_REF/(1+2/(Beta*(1+Beta)));//output current in mA
disp(Iout,"The output current in mA is : ")
IC2= Iout;//collector current in mA
disp(IC2,"The collector current in mA is : ")
// IB3= I_REF-IC1= I_REF-IC2  (since IC1= IC2)
IB3= I_REF-IC2;//base current of transistor Q3 in mA
IB3= IB3*10^3;// in µA
disp(IB3,"The base current of transistor Q3 in µA is : ")
IB3= 0.1;// in µA
IE3= (1+Beta)*IB3;// emitter current of transistor Q3 in µA
disp(IE3,"The emitter current of transistor Q3 in µA is : ")
IB1= IE3/2;//base current in µA
IB2= IB1;// in µA
disp(IB1,"The base current in µA is : ")


