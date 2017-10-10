//Example_a_3_13 page no:142
clc;
I=20;
R1=6;
R2=3;
R3=5;
R4=2;
R5=6;
I5=I*(R2/(R2+6.5));
I6=I5*(2/(R1+2));
V=I6*R4;
Rt=(((((6*3)/(6+3))+5)*2)/((((6*3)/(6+3))+5)+2))+(6+2);
I61=V/Rt;
I=I6-I61;//in A
disp(I,"the ammeter reading is (in A)");
