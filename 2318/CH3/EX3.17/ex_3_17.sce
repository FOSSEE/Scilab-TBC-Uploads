//Example 3.17: Bridhe Balanced
clc;
clear;
close;
z1m=400;//ohms
z1a=50;//degree
z2m=200;//ohms
z2a=40;//degree
z3m=800;//ohms
z3a=-50;//degree
z4m=400;//ohms
z4a=20;//degree
x=z1m*z4m;//ohms
y=z2m*z3m;//ohms
a=z1a+z4a;//degree
b=z2a+z3a;//degree
disp("As "+string(x)+"="+string(y)+" (Z1*Z4=Z2*Z3) firts condition is satisfied")
disp("As "+string(a)+"° ≠ "+string(b)+"° (Sum of angles) second condition is not staisfied (so bridge is not balanced) ")
