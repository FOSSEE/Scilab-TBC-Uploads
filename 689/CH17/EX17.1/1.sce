clc; funcprot(0);
//Example 17.1 Absolute and service ceilings
//Variable Initialisation
W = 4000;
DelHp0 = 60;
DelHp10K = 17;

//Calculation
RC0 = DelHp0*33000/W;
RC10K = DelHp10K*33000/W;
H = 10000/(1 - (RC10K/RC0));
Hs = H*(RC0-100)/RC0;

//Results
disp(Hs,"Service Ceiling (ft) : ");
