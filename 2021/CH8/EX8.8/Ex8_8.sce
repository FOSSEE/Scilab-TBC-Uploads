//Dischage through Orifice
//Given
b=1.5;
H1=3.2;
H2=2;
H3=2.4;
Cd=0.62;
g=9.81;
//To Find
a=H3^(3/2)-H2^(3/2);
q1=(2/3)*Cd*b*sqrt(2*g)*a;
q2=Cd*b*(H1-H3)*sqrt(2*g*H3);
q3=q1+q2;
disp("Dischage through Orifice ="+string(q3)+" m^3/sec");
