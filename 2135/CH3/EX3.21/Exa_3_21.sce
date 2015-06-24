//Exa 3.21
clc;
clear;
close;
format('v',7);

//Given Data :
W=10;//KW
//For flat plate collector
T1=90+273;//K
T2=27+273;//K
Tmax=T1;//K
IE=1;//KW/m^2 incident energy
EtaCollection=60/100;
//Eta=1-T2/T1=W/Q1
Q1=W/(1-T2/T1);//KJ/s
A1=Q1/IE/EtaCollection;//m^2
disp(A1,"Solar Collector Area required in m^2 : ");
//For parabolic collector
T3=250+273;//K
T4=27+273;//K
Tmax=T3;//K
IE=1;//KW/m^2 incident energy
EtaCollection=50/100;
//Eta=1-T2/T1=W/Q1
Q3=W/(1-T4/T3);//KJ/s
A2=Q3/IE/EtaCollection;//m^2
disp(A2,"Parabolic Solar Collector Area required in m^2 : ");
//Answer of 2nd part is wrong in the book.
