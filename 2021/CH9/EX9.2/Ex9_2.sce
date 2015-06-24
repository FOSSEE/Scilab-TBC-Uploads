//Finding of Height
//Given
q=1.5;
Cd=0.6;
L=5;
g=9.81;
//To Find
H=q/((2/3)*Cd*L*sqrt(2*g));
H1=H^(2/3);
Z=q-H1;disp(H1);
disp("Height ="+string(Z)+" meter");
