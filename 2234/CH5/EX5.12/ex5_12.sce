clc;
R1=2;   //resisitance in Ohm
R2=3;  //resistance in Ohm
R3=1;   //resistance in Ohm
Rp=(R1*R2)/(R1+R2);  //calculating parallel resistance
R=Rp+1;      //1 Ohm in series
disp(R,"(1)Equivalent Resisitance in Ohm = ");  //displaying result
Rs=(R1+R2+R3);  //series resistances
disp(Rs,"(2)All resistances in series in Ohm = ");  //displaying result
Rp=(1/R1)+(1/R2)+(1/R3);  //calculating parallel resistance
disp((1/Rp),"(3)All in Parallel in Ohm = ");  //displaying result