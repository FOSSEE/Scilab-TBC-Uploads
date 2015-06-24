// Example 7.5
clc;
clear;
close;
// Given data
format('v',5);
alpha= 1.414;// passband
C= 0.01*10^-6;// in F (assume)
fc= 1*10^3;// in Hz
dc_gain= 6;
R= 1/(2*%pi*C*fc);// in Ω
R= R*10^-3;// in kΩ
disp("The value of R is : "+string(R)+" kΩ (standard value 15 kΩ)");
R= 15;// in kΩ
Af= 3-alpha;// and Af= 1+Rf/R1 or
// Rf= (Af-1)*R1    (i)
// 2*R= Rf || R1, hence from (i)
R1= 2*R*Af/(Af-1);// in kΩ
disp("The value of R1 is : "+string(R1)+" kΩ (standard value 82 kΩ)");
R1= 82;// in kΩ
Rf= (Af-1)*R1;// in kΩ
disp("The value of Rf is : "+string(Rf)+" kΩ (standard value 47 kΩ)");
Aamp= dc_gain/Af;
disp("The value of Aamp is : "+string(Aamp));
