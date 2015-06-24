//Exa 4.20
clc;
clear;
close;
// Given data
Q_acb = 84;//in kJ
W_acb = 32;// in kJ
//Formula Q_acb = del_U+W_acb where del_U = U_b - U_a;
del_U = Q_acb - W_acb;// in kJ
// Part (a) Path a b d
W_abd = 10.5;// in kJ
Q_abd = del_U + W_abd;// in kJ
disp(Q_abd,"Heat flows into the system along the path a b d in kJ is : ");
// Part (b) curved path b a
W_ba = -(21);// in kJ
Q_ba = -(del_U) + W_ba;// in kJ
disp(abs(Q_ba),"Heat liberated by the system in kJ is : ");
// Part (c) process a b and d b
W_ad = 10.5;// in kJ
del_U1 = 42;// in kJ
Q_ad = del_U1 + W_ad;// in kJ
disp(Q_ad,"Heat absorbed in processes a d  in kJ is : ");
W_db = -(42);// in kJ
del_U2 = 52;// in kJ
Q_bd = del_U2 + W_db;// in kJ
disp(Q_bd,"Heat absorbed in processes b d in kJ is : ");
W_db = 0;
W_abd = W_ad + W_db;// in kJ
disp(W_abd,"Heat absorbed in processes in a d and d b in kJ is : ");
