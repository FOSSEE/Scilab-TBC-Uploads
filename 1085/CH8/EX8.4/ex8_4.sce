//Exam:8.4
clc;
clear;
close;
l_o=305*10^-3;//length of copper piece(in meter)
E=110*10^9;//surface energy
stress=276*10^6;//in Pa
dl=stress*l_o/E;//resultant elongation(in meter)
disp(dl*10^3,'resultant elongation(in mm)=');