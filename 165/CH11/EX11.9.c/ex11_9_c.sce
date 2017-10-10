//Example 11.9(c)
clc;

//Given values of bridge elements
R=1000;    //R2=R3=R4=R
R2=R;
R3=R;
R4=R;
w=314;
C4=1*10^-6;
//Value of Rx for Hay's Bridge
Rx=(R4*R2*R3*(w*C4)^2)/(1+(w*R4*C4)^2);
//Value of Lx for Hay's Bridge
Lx=(R2*R3*C4)/(1+(w*R4*C4)^2);
disp(Rx,'Value of resistence is')
disp(Lx,'Value of Inductance is')