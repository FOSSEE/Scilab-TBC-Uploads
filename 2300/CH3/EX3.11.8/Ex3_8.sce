
//scilab 5.4.1
//windows 7 operating system
//chapter 3:Properties of Semiconductors
clc
clear
//given
RH=(10^-2);//RH=Hall coefficient in (m^3)/C
VH=(10^-3);//VH=Hall Voltage in V
b=2*(10^-3);//b=width in m
I=(10^-3);//I=current in A
//RH=(VH*b)/(I*B)
B=(VH*b)/(I*RH)//B=magnetic field
disp("T",B,"B=")
t=(10^-3)//t=thickness in m
FH=(VH/t)//FH=Hall field
disp("V/m",FH,"FH=")

