clc
T1=1023; //K
T2=298; //K
n_carnot=1-T2/T1;
W=75*1000*60*60;
Q=3.9*74500*1000;
n_thermal=W/Q;
disp("n_carnot =")
disp(n_carnot)

disp("n_thermal =")
disp(n_thermal)

disp("Since ηthermal > ηcarnot, therefore claim of the inventor is not valid (or possible")