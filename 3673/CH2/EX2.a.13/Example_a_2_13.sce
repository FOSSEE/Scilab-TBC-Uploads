//Example 2_13 page no:97
clc;
delta=[1.08,-0.75,
    -4.75,5.75];
delta1=[-6.25,-0.75,
    21.25,5.75];
delta2=[1.08,-6.25,
    -4.75,21.25];
V1=det(delta1)/det(delta);
V2=det(delta2)/det(delta);
Vx=V1+5-V2;
disp(V1,"the voltage V1 is");
disp(V2,"the voltage V2 is");
disp(Vx,"the voltage across 4 ohm resistor is (in V)");
