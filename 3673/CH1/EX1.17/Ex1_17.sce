//Example 1_17 page no:20
clc
I=12;//total current in circuit(in ampere)
R1=4;//Resistance in ohm
R2=4;//Resistance in ohm
R3=4;//Resistance in ohm
R=R2*R3/(R2+R3)
I1=I*R/(R+R1)
disp(I1,"Current in resistor R1(in ampere)")
I2=I*R/(R+R2)
disp(I1,"Current in resistor R1(in ampere)")
I3=I*R/(R+R3)
disp(I1,"Current in resistor R1(in ampere)")
