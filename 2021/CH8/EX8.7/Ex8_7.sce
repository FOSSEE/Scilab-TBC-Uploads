//Finding of Dischage through a fully submersed Orifice
//Given
b=2;
H=0.8;
H1=2.5;
H2=3;
Cd=0.6;
g=9.81;
//To Find
a=sqrt(2*g*H);
q=Cd*a*b*(H2-H1);
disp("Dischage through a fully submersed Orifice ="+string(q)+" m^3/sec");

