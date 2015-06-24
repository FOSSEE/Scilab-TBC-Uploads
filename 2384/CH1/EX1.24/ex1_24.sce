// Exa 1.24
clc;
clear;
close;
format('v',7)
// Given data
R1= 6;// in ohm
R2= 12;// in ohm
R3= 2;// in ohm
R4= 6;// in ohm
V2= 12;// in V
V3= 30;// in V
//Applying KVL in ABEFA  :  I1*(R1+R2) - R2*I2=V3-V2                  (i)
//Applying KVL in BCDEB  :  -I1*R2+I2*(R1+R2+R3)=V2                   (ii)
A= [(R1+R2) -R2; -R2 (R1+R2+R3)];
B= [(V3-V2) (V2)];
I= B*A^-1;// Solving eq(i),  and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
V1= I2*R1;//voltage across 6 ohm resistor  in V
disp(V1,"The voltage across 6 ohm resistor in V is : ")
