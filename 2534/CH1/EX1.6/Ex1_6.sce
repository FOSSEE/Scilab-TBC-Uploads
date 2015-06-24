//Ex1.6
clc
R1 = 14//resistance at temperature T1 
alpha=0.005
T1=20;//initial temperature
T2=120 //final temperature
disp("R1 = "+string(R1)+ "ohm; alpha = "+string(alpha)+"; T1 = "+string(T1)+"degreeC; T2 = "+string(T2)+"degreeC")
disp("R2 = R1(1+(alpha*(T1-T2))) = "+string(R1*(1+(alpha*(T2-T1))))+"ohm") //resistance at temperature T2
