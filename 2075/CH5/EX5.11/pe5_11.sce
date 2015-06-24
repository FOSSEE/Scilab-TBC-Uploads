//example 5.11
clc; funcprot(0);
// Initialization of Variable
P=200;//power
R=8;//ohm
//calculation
Il=(P/R)^.5*2^.5;
Ilm=1.2*Il;
disp(Ilm,"limit level current in A:")
