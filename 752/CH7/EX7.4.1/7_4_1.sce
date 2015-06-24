clc;
//page no 230
//prob no. 7.4.1
//Refer example 7.3.1
//2-tuning capacitor with max 350pF/section ^ capacitance ratio in eg. 7.3.1
Rco=8.463;Rfo=2.909;Rcs=4.182;Rfo=2.045;fo_max=2055*10^3;fo_min=1005*10^3;
Cs_max=350*10^-12;
//For the RF section
Cs_min=Cs_max/Rcs;
disp('F',Cs_min,'The Cs_min is'); 