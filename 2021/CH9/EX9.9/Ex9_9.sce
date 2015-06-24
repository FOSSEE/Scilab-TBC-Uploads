//Finding of Dischage
//Given
Cd1=0.6;
Cd2=0.8;
L=3.5;
g=9.81;
H1=0.3;
H2=0.15;
//To Find
q1=((2/3)*Cd1*L*sqrt(2*g)*(H1-H2)^(3/2));
q2=Cd2*L*H2*sqrt(2*g*(H1-H2));
q3=q1+q2;
disp("Dischage ="+string(q3)+" m^3/sec");
