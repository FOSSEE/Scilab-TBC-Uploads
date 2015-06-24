//Exam:10.1
clc;
clear;
close;
N=8;//ASTM grain size number
n=2^(N-1);//Number of grains per inch square at a magnification
N_1=n*100*100;//Number of grains per inch square without magnification
N_2=N_1/(25.4)^2;//Number of grains per mm square without magnification
A_a=1/(N_2);//Average area of each grain(in mm^2)
D=(A_a)^(1/2);//Average grain diameter(in mm)
disp(D,'Average grain diameter(in mm)=')