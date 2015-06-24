//Caption:Calculate induced emf when running at speed of 1380 rpm.
//Exam:2.38
clc;
clear;
close;
P=4;//Poles in d.c. machine
Z=594;//number of conductor in d.c. machine
F=0.0075;//flux per pole(in Wb)
N=1380;//speed of the motor
A=2;//number of parallel paths 
E=P*F*N*Z/(60*A);//emf generated in machine when running at speed of 1380 rpm.
disp(ceil(E),'emf generated in machine when running at speed of 1380 rpm.(in V)=');