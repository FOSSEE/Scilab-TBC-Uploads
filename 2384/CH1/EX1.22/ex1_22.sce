// Exa 1.22
clc;
clear;
close;
format('v',6)
// Given data
R1= 10;// in ohm
R2= 5;// in ohm
R3= 20;// in ohm
V= 100;// in V
I2= 10;// in A
// Applying KVL in ABEFA : -R1*I1-R2*(I1+I2)+V= 0
I1= (V-R2*I2)/(R1+R2);// in A
I10_ohm= I1;//current through 10 ohm resistance in A
I5_ohm= I1+I2;//current through 5 ohm resistance in A
I20_ohm= I2;//current through 20 ohm resistance in A
disp("Part (i) : Using by KVL")
disp(I10_ohm,"The current through 10 ohm resistance in A is : ")
disp(I5_ohm,"The current through 5 ohm resistance in A is : ")
disp(I20_ohm,"The current through 20 ohm resistance in A is : ")
// Applying KCL at node A :
VA= (V*R2+I2*R1*R2)/(R1+R2);// in V
I10_ohm= (VA-V)/R1;// in A
I5_ohm= VA/R2;// in A
I20_ohm= I2;// in A
disp("Part (ii) : Using by KVL")
disp(I10_ohm,"The current through 10 ohm resistance in A is : ")
disp(I5_ohm,"The current through 5 ohm resistance in A is : ")
disp(I20_ohm,"The current through 20 ohm resistance in A is : ")


