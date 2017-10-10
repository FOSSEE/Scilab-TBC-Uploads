//Example 11.10(f)
clc;

//Given values of bridge elements
R1=300;
C1=0.6*10^-6;
R2=100;
C3=100*10^-12;
//Value of Rx for Schering's Bridge
Rx=C1*R2/C3;
//Value of Cx for Schering's Bridge
Cx=C3*R1/R2;

printf('\nValue of resistence is %d ohm\n',Rx)
disp(Cx,'Value of Capacitance is')