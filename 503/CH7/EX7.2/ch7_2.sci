// to find spacing b/w brushes

clc;
S=22;
P=4;
Y_cs=floor(S/P);
U=6;        //coil sides/slot
Y_b=Y_cs*U+1;
y_f=Y_b-2;
n=(1/2)*U*S;        //no of commutator segments
A=4;        //no of brushes
sp=n/A;
disp(sp,'spacing b/w adjacent brushes');
