//example 9.7
clc;funcprot(0);
//Initialization of Variable
P=150;//power
V=8;//voltage
R=.01;//resistance
D=.5;//duty cycle
//calculation
I=P/.9/D/V;
disp(I,"max. current in A:")
Ir=I*D^.5;
Pq=Ir^2*R;
disp(Pq,"dissipated power in W:")
clear()
