clc
Q_lqm=168; //kJ
W_lqm=64; //kJ
dU_lm=Q_lqm - W_lqm;
W_lnm=21; //kJ
W_ml=-42; //kJ

Q_lnm=dU_lm + W_lnm;
disp("(i)Q_lnm=")
disp(Q_lnm)
disp("kJ")


Q_ml=W_ml - dU_lm;
disp("(ii)Q_ml = ")
disp(Q_ml)
disp("kJ")


W_ln=21; //kJ
dU_ln=84; //kJ
Q_ln=dU_ln + W_ln;
Q_nm=Q_lnm-Q_ln;
disp("Q_nm = ")
disp(Q_nm)
disp("kJ")