//to calculate relevant pitches for wave windings

clc;
S=16;
P=6;
Y_cs=floor(S/P);
U=2;
Y_b=Y_cs*U+1;
C=16;
y_c=U*(C-1)/P;
y_f=2*y_c-Y_b;
disp(y_f,'no of pitches');