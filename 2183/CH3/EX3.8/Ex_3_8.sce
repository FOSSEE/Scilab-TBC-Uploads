//Example 3.8.a // Excess loss
clc;
clear;
close;
//given data :
P1=60;// in micro-W
P3=26;// in micro-W
P4=27.5;// in micro-W
P2=0.004;// in micro-W
E_loss=10*log10((P1/(P3+P4)));
disp(E_loss,"(a). The excess loss,(dB) = ")
I_loss=10*log10(P1/P4);
disp(I_loss,"(b).i. insertion loss port 1 to port 4,(dB) = ")
I_loss1=10*log10(P1/P3);
disp(I_loss1,"(b).ii. insertion loss port 1 to port 3,(dB) = ")
C_talk=10*log10(P2/P1);
disp(C_talk,"Cross talk,(db) = ")
sr=(P3/(P3+P4))*100;
disp(sr,"Split ratio,(%) = ")
