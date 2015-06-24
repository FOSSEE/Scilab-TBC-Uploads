// Exa 1.8
clc;
clear;
close;
format('v',7)
// Given data
R1= 2;// in ohm
R2= 4;// in ohm
R3= 1;// in ohm
R4= 6;// in ohm
R5= 4;// in ohm
V1= 10;// in V
V2= 20;// in V
//Applying KVL in ABGHA :  I1*(R1+R2) - R2*I2 = V1                   (i)
//Applying KVL in BCFGB :  I1*R5-I2*(R3+R4+R5)+I3*R4 = 0      (ii)
//Applying KVL in CDEFC:  R4*I2-I3*(R2+R4)=V2                          (iii)
A= [(R1+R2) R5 0; -R2 -(R3+R4+R5) R4; 0 R4 -(R2+R4)];
B= [V1 0 V2];
I= B*A^-1;// Solving eq(i), (ii) and (iii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
I3= I(3);// in A
I6_ohm_resistor= I2-I3;//The current through 6 ohm resistance  in A
disp(I6_ohm_resistor,"The current through 6 ohm resistance in A is : ")
