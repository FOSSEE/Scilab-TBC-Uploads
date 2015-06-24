//Exa2.24
clc;
clear;
close;
//given data
t2=50;// in degree C
t1=20; // in degree C
R1=600;// in ohm
R2=300;// in ohm

// Let resistance of 600 ohm resistance at 50 degree C = R_600
R_600=R1*(1+(t2-t1)*.001);// in ohm
// Let resistance of 300 ohm resistance at 50 degree C = R_300
R_300=R2*(1+(t2-t1)*.004);// in ohm
R_50=R_600+R_300;// in ohm
disp("Resistance of combination at 50degree C is : "+string(R_50)+ " ohm")
R_20=R1+R2;// in ohm
alpha_20=(R_50/R_20-1)/(t2-t1);
alpha_50=1/(1/(alpha_20)+(t2-t1));
disp("Effective temperature coefficient of combination at 50 degree C is : "+string(alpha_50)+"  or 1/530 per degree C")
