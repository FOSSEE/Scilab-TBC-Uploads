// to calculate no of parrallel path

clc;
S=12;        //no of commutator segments
P=4;
Y_cs=S/P;        //slots
Y_b=2*Y_cs+1;
y_f=Y_b-2;
disp(y_f,'no of parralel path');