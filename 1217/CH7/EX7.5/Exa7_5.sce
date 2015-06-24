// Exa 7.5
clc;
clear;
close;
// given data 
VSat=13;//in Volt
Vut=2;//in Volt
Vlt=-1;//in Volt
// Assume R1=10 Kohm
R1=10;//in Kohm
R2=((VSat/Vut)-1)*R1;//in Kohm
R3=((-VSat/Vlt)-1)*R1;//in Kohm
disp(R1,"Value of R1 in Kohm is :");
disp(R2,"Value of R2 in Kohm is :");
disp(R3,"Value of R1 in Kohm is :");
