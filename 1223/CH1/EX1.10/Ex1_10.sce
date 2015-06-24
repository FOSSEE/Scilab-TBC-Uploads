clear;
clc;
//Example 1.10
V_Y=0.7;//(V)cut in voltage for pn junction
r_f=0;
V_PS=4;//(V)
R1=4,R2=4//(KOhm) from given circuit
I1=(V_PS-V_Y)/R1;
printf('\ncurrent through pn junction diode=%.3f mA\n',I1)
V_Y=0.3;//(V)cut in voltage for Schottky diode
I2=(V_PS-V_Y)/R2;
printf('\ncurrent through Schottky diode=%.3f mA\n',I2)
