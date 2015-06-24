//example 4.11
clc; funcprot(0);
// Initialization of Variable
P=20;
R=8;
Vi=1.23;
//calculation
V=(P*R)^.5;
disp(V,"output voltage in V")
G=V/Vi;
disp(G,"gain:")
clear()
