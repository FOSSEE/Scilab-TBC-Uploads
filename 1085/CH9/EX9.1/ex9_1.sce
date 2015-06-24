//Exam:9.1
clc;
clear;
close;
//Fulcrum is at 0.5% carbon
//from lever rule
Pro_f=((0.80-0.5)/(0.80-0.0))*100;// % Proeutectoid ferrite
Pea_f=100-Pro_f;// % Pearlite ferrite
disp(Pro_f,'% Proeutectoid ferrite=');
disp(Pea_f,'% Pearlite ferrite=');