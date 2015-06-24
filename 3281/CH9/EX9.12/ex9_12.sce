//Page Number: 487
//Example 9.12
clc;
//Given
G=15.85;
Rn=75; //ohm

Rl=Rn-(Rn/G);
C=Rl+(10*%i);
disp('ohms',C,'Cavity impedance:');
