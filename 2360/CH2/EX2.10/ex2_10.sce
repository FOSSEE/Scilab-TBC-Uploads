// Exa 2.10
format('v',7);clc;clear;close;
// Given data
R1= 100;//resistance in Ω
Re1= 0.1;//error in Ω
R2= 50;//resistance in Ω
Re2= 0.03;//error in Ω
R= R1+R2;//resistance in Ω
w= sqrt(Re1^2+Re2^2);
disp("For Series connection, R= "+string(R)+" ± "+string(w)+" Ω")
R= R1*R2/(R1+R2);// in Ω
del_RbyR1= ((R1+R2)*R2-R1*R2)/(R1+R2)^2;
del_RbyR2= ((R1+R2)*R1-R1*R2)/(R1+R2)^2;
w= sqrt(del_RbyR1^2*Re1^2+del_RbyR2^2*Re2^2);
disp("For Parallel connection, R= "+string(R)+" ± "+string(w)+" Ω")

