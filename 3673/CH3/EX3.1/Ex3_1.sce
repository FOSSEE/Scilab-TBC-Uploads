//Example 3_1 page no:112
clc
r1=13//resistance in ohm
r2=12//resistance in ohm
r3=14//resistance in ohm
R1=r1*r2/(r1+r2+r3)
disp(R1,"resistance R1 is (in ohm)")
R2=r3*r1/(r1+r2+r3)
disp(R2,"resistance R2 is (in ohm)")
R3=r2*r3/(r1+r2+r3)
disp(R3,"resistance R3 is (in ohm)")
