//Stator copper loss Pcs, Mechanical loss Pr, Stator core loss Pms
close();
clear;
clc;
Pcs = 3;//kW
Pr = 2;//kW
Pms = 1.7;//kW
//From previous question
Pir = 120;//kW
Pcr = 6;//kW
Pom = Pir - Pcr - Pr;
Pim = Pir + Pcs + Pms;
n = Pom/Pim*100;
mprintf('Motor Output = %0.0f kW\nMotor Input = %0.1f kW \nEfficency = %0.1f %%',Pom,Pim,n);  