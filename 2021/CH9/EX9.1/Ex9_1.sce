//Finding of Discharge through rectangular Notch
//Given
H=0.4;
L=3;
Cd=0.6;
g=9.81;
//To Find
q=(2/3)*Cd*L*sqrt(2*g)*H^(3/2);
disp("Discharge through rectangular Notch ="+string(q)+" m^3/sec");
