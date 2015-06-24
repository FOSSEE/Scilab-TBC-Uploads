//Finding of theoretical discharge ,Coefficient of Discharge ,Slip
//Given
N=30;
Qac=0.012;
d=0.25;
L=0.5;
//To Find
A=(%pi/4)*d^2;
Qth=(A*L*N)/60;
S=Qth-Qac;
Cd=Qac/Qth;
S1=((Qth-Qac)/Qth)*100;
disp("Theoretical Discharge ="+string(Qth)+" m^3/sec");
disp("Co efficient of Discharge ="+string(Cd)+" No Units");
disp("Slip ="+string(S)+" m^3/sec");
disp("Percentage Slip ="+string(S1)+" No Units");
