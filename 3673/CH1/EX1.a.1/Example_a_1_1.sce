//Example 1_1 page no:20
clc;
Rt=1.7*10^3;
R=3*10^3;
It=6/Rt;
It=It*1000;//converting to milli Ampere
I10k=6/(10*10^3);
I10k=I10k*1000;//converting to milli Ampere
I3k=6/(3*10^3);
I3k=I3k*1000;//converting to milli Ampere
I4k=It-(I3k+I10k);
I4_7k=I4k*(5/(5+4.7));
V3k=I3k*R*10^-3;
disp(It,"the total current is (in mA)");
disp(I10k,"the current through 10k resistor is (in mA)");
disp(I3k,"the current through 3k resistor is (in mA)");
disp(I4k,"the current through 4k resistor is (in mA)");
disp(I4_7k,"the current through 4.7k resistor is (in mA)");
disp(V3k,"the voltage across 3k resistor is (in V)");
