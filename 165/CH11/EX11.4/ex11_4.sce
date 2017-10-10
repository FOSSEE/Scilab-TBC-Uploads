//Example 11.4
clc;

//Given values of bridge elements
R1=5;
R2=2*R1;               //Given R1 = 0.5*R2
Rb_Ra_ratio=1/1000;    // Rb/Ra=1/1000
Rx=R2*Rb_Ra_ratio;
disp(Rx,'Value of unknown bridge element')