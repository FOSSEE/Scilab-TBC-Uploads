clc
T1=671; //K
T2=T1;
T3=313; //K
T4=T3;
W=130; //kJ

disp("(i) Engine thermal efficiency =")
n_th=(T2-T3)/T2;
disp(n_th)


disp("(ii) Heat added =")
Q=W/n_th;
disp(Q)
disp("kJ")


disp("(iii) The entropy changes during heat rejection process")
Q_rejected=Q-W;
dS=Q_rejected/T3;
disp("dS=")
disp(dS)
disp("kJ/K")