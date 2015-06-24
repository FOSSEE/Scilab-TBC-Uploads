//Exam:14.9
clc;
clear;
close;
//hysteresis loss (Ph) and the induced emf loss (Pe) are proportional to the frequency
//Pe is proportional to the square of the induced emf (Pe)
//Pe + Ph = 750 W (at 25 Hz)
//4Pe + 2Ph = 2300 W(at 50Hz)
//solving equation
P_e=800/2;//induced emf loss 
I_d=4*P_e;//The eddy current loss at the normal voltage and frequency
disp(I_d,'The eddy current loss at the normal voltage and frequency(in W)=');