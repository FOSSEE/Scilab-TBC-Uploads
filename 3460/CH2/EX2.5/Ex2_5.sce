clc;
//Need to calculate circuit current and voltage amplitudes across R,L,C
Vs=50; //in volt
R=25; //in ohm
X_L=100;//in ohm
X_C=100; //in ohm
I=Vs/R;
disp(+'Ampere',I,'current =')
V_R=I*R
V_L=I*X_L
V_C=I*X_C
disp(+'volt',V_R,'voltage across R =')
disp(+'volt',V_L,'voltage across L =')
disp(+'volt',V_C,'voltage across C =')
