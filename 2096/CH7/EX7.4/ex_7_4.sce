
//Example 7.4 // inductance
clc;
clear;
close;
//given data : 
l=1; // air gap lenth in mm
L1=2; // in mH
D1=0.02; // when a displacement is applied
l1=l-D1;
dL=(L1*(l/l1))-L1;
L=dL/L1;
D=D1/l;
disp(L*10^2," inductance ,L(mH) = ")
disp(dL,"inductance,dL(mH) = ")
disp(D,"the ratio of displacement to original gap length,D = ")
