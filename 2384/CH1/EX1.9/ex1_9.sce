// Exa 1.9
clc;
clear;
close;
format('v',6)
// Given data
R1= 30;// in ohm
R2= 40;// in ohm
R3= 20;// in ohm
R4= 60;// in ohm
R5= 50;// in ohm
V= 240;// in V
//Applying KVL in ABDA  :  I1*-(R1+R2+R3) + R2*I2+R3*I3 =0                  (i)
//Applying KVL in BCDB  :  I1*R2+I2*-(R2+R4+R5)+I3*R5 = 0                   (ii)
//Applying KVL in CFEADC: I1*R3+ R5*I2+I3*-(R3+R5)=-V                       (iii)
A= [-(R1+R2+R3) R2 R3; R2 -(R2+R4+R5) R5; R3 R5 -(R3+R5)];
B= [0 0 -V];
I= B*A^-1;// Solving eq(i), (ii) and (iii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
I3= I(3);// in A
I30_ohm_resistor= I1;// in A
I60_ohm_resistor= I2;// in A
I50_ohm_resistor= I2-I3;// in A
I20_ohm_resistor= I1-I3;// in A
I40_ohm_resistor= I1-I2;// in A
disp(I30_ohm_resistor,"The current through 30 ohm resistance in A is : ")
disp(I60_ohm_resistor,"The current through 60 ohm resistance in A is : ")
disp(I50_ohm_resistor,"The current through 50 ohm resistance in A is : ")
disp(I20_ohm_resistor,"The current through 20 ohm resistance in A is : ")
disp(I40_ohm_resistor,"The current through 40 ohm resistance in A is : ")

// Note: In the book there is a mistake in eq(iii), the R.H.S of eq(iii) should be -24 not -240. Since they divide the L.H.S of eq(iii) by 10 and R.H.S not divided, So the answer in the book is wrong


  
