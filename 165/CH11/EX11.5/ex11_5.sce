//Example 11.5
clc;

E=6;    //Applied potential across bridge
//Given values of bridge elements
R1=5000;
R2=5000;
R3=5000;
//We Know Balanced bridge equations as
//    R1*R3=R2*R4
Rv=R2*R3/R1;
disp(Rv,'Value of unknown Resistence Rv is at 80 deg C')
//Now given from the graph is the value of Rv at 60 deg C
Rv=4500;
//The error signal can be calculated using following formula
es=E*(R3/(R1+R3)-Rv/(R2+Rv));
disp(es,'The value of error signal at 60 deg C is')