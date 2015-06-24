//Ex 6.7
clc;
clear;
close;
format('v',5);
f0=200;//Hz//Oscillating Frequency
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance(micro F)");
R=0.159/(f0*C*10^-6);//ohm
R=R/1000;//kohm
disp(R,"Resistance R(kohm)");
disp("We should use R=510 kohm for the design.")
R=510;//kohm
C1=C;C2=C;C3=C;//micro F
disp(C3,C2,C1,"Capacitance C1, C2 & C3(micro F)");
R2=R;R3=R;//kohm
disp(R3,R2,"Resistance R2, R3(kohm)");
disp("1000k pot can be used.")
//Answer for R is calculated wrong in the textbook.
