//Scilab Code for Example 8.9 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms G1 G2 G3 G4 H1 H2 s;
G1=s/(s+5);
G2=10/(s+10);
H1=s;
H2=1/s;
disp('(i) Shifting the take off point');
H1=H1/G2;
disp('(ii) Solving second Feedback Loop ');
G3=H1-1;
disp('(iii) Solving first Feedback Loop ');
G4=G2/(1+G2*H2);
Z=G1*G3*G4;
disp(Z,'(iv) The Transfer Function is:');
