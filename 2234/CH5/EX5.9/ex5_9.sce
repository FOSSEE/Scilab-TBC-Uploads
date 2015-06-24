clc;
R1=2;   //resisitance in Ohm
R2=4;  //resistance in Ohm
R3=5;   //resistance in Ohm
R=(R1^-1)+(R2^-1)+(R3^-1);  //calculating parallel resistance
Rp=(1/R);
disp(Rp,"Resisitance in Ohm = ");  //displaying result