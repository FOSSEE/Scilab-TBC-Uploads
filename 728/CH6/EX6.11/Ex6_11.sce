 //Caption:Calculate (i)-directivity ,(ii)-coupling, (iii)-isolation
//Exa:6.11
clc;
clear;
close;
S_13=0.1;
S_14=0.05;
C=-20*log(S_13)/log(10);
D=20*log(S_13/S_14)/log(10);
I=C+D;
disp(C,'Coupling (in dB) =');
disp(D,'Directivity (in dB)) =');
disp(I,'Isolation (in dB) =');