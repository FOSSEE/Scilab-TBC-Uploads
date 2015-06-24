// Exa 7.8
clc;
clear;
close;
// Given data
f=50;//in Hz
R4=309;//in ohm
R2=100;// in ohm
C3=109*10^-12;//in F
C4=0.5*10^-6;//in F
omega=2*%pi*f;
Cx= C3*R4/R2;// in F
disp(Cx*10^12,"Equivalent series capacitance in µµF");
Rx= C4*R2/C3;// in ohm
// Power factor of the specimen
Tan_delta= omega*Cx*Rx;
disp(Tan_delta,"Power factor of the specimen is ")
