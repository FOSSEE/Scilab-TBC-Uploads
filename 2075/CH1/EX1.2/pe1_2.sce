//example 1.2
clc;funcprot(0);
//Initialization of Variable
Rf=100000//resistance
Acl=100//amplifier gain
Ri=Rf/(Acl-1);
disp(Ri/1000,"input resistance in Kohm")
clear()
