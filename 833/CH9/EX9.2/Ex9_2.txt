//Caption: Find values of the 5 steps in a 6 stud starter for a d.c. shunt motor
//Exa:9.2
clc;
clear;
close;
P_o=3730//Output power(in watt)
V=200//Voltage supplied to motor(in volts)
e=88//Efficiency(in%)
P_i=P_o/(e/100)
I=P_i/V//Full load current
I_a=I//Neglecting field current
L=P_i-P_o
Cu=(1/2)*L//Copper loss is half the total loss(Given)
R_a=Cu/(I^2)
I_m=(2*I)//Maximum current is twice full load current(Given)
R_1=V/I_m
g=(R_1/R_a)^(1/5)
R_2=R_1/g
r1=R_1-R_2
R_3=R_2/g
r2=R_2-R_3
R_4=R_3/g
r3=R_3-R_4
R_5=R_4/g
r4=R_4-R_5
R_6=R_5/g
r5=R_5-R_6
disp(r5,r4,r3,r2,r1,'Required resistances r1,r2,r3,r4,r5(in ohms)=')