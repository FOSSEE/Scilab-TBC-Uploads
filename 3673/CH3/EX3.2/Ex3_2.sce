//Example 3_2 page no:113
clc
R1=10//resistance in ohm
R2=5//resistance in ohm
R3=20//resistance in ohm
r1=((R1*R2)+(R2*R3)+(R3*R1))/R3
disp(r1,"resistance r1 is (in ohm)")
r2=((R1*R2)+(R2*R3)+(R3*R1))/R1
disp(r2,"resistance r2 is (in ohm)")
r3=((R1*R2)+(R2*R3)+(R3*R1))/R2
disp(r3,"resistance r3 is (in ohm)")
