clc;
v=0.04;  //voltage per turn in Volt
area=5*10^-4;  //metre square
B=v/area;  //calculating B
disp(B,"B in Tesla/sec = ");  //displaying result
H=B/(4*(%pi)*10^-7*20000);  //calculating H
disp(H,"H in A/m = ");  //displaying result
disp("Therefore, for 500 turns and 20 cm = 1.27 A/sec.25.4 ms for 20 mA and 38.1 ms for 30 mA");  //displaying result
