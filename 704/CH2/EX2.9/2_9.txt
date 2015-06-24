//Caption:Calculate the emf if the speed is 1500 rpm
//Exam:2.9
clc;
clear;
close;
P=8;//Number of poles
F=2;//flux per pole (in mWb)
F_1=2*10^-2;//flux per pole (in Wb)
Z=960;//number of conductor
A=P;//Number of parallel paths(lap winding)
N=1500;//speed (in rpm)
E_g=P*F*Z*N/(60*A);//emf generated (in Volts)
disp(E_g,'emf generated (in Volts)=');