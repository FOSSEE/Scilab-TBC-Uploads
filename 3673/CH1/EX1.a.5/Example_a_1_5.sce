//Example 1_5 page no:23
clc;
//applying kirchoff law
V=-20*10^-3/(-4.25*10^-3);
P3=66.55;
P20=-20*V;
P4=V*V/(4);
P=V*V/1;
disp(P3,"the power absorbed by 3i current source is (in mW)");
disp(P20,"the power absorbed by 20mA current source is (in mW)");
disp(P4,"the power absorbed by 4 kilo ohm current source is (in mW)");
disp(P,"the power absorbed by 1 kilo ohm current source is (in mW)");
//in text book V value is rounded off but here the value is not rounded and used directly
//so power result varies slightly
//in text book V is rounded to 4.71 V
