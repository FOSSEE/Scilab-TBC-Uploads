//clear//
//Example5.3:Finimum acceptable frequency
//Page 138
//figure 5.5
clear;
clc;
Rf=20000;      //in Ohms
Ri=500;         //in Ohms
f2=50*10^3;        //In Hz
Anoise=1+(Rf/Ri);
disp(Anoise,"Anoise");
funity=Anoise*f2;
disp("Hz",funity,"funity");

disp("For this application 741 would not be fast enough, therefore 411 would be fine");
