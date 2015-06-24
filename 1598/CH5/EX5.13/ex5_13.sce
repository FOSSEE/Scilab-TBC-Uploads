clc;
V=20;    //voltage in Volts
R1=2;   //resisitance in Ohm
R2=4;  //resistance in Ohm
R3=5;   //resistance in Ohm
Rp=(1/R1)+(1/R2)+(1/R3);  //calculating parallel resistance
R=1/Rp;      //Parallel
disp(R,"(a)Equivalent Resisitance in Ohm = ");  //displaying result
I1=V/R1;  //calculating current through R1
I2=V/R2;  //calculating current through R2
I3=V/R3;  //calculating current through R3
I=V/R;   //calculating total current
disp(I1,"Current through R1 in Ampere = ");  //displaying result
disp(I2,"Current through R2 in Ampere = ");  //displaying result
disp(I3,"Current through R3 in Ampere = ");  //displaying result
disp(I,"Total current in Ampere = ");  //displaying result