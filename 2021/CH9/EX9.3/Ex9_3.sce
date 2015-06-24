//Finding of Position of Apex of Notch
//Given
q=0.20;
d=1;
theta=90;
Cd=0.62;
g=9.81;
//To Find
b=(theta/2);
H=q/((8/15)*Cd*sqrt(2*g)*tan(b));
H1=H^(2/5);
p=d-H1;
disp("Position of Apex of Notch ="+string(p)+" meter");
