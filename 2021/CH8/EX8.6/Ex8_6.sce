//Finding of Dischage through Rectangular orifice
//Given
H1=4;
H2=6;
Cd=0.62;
g=9.81;
//To Find
a=H2^(3/2)-H1^(3/2);
b=sqrt(2*g);
q=Cd*2*b*a;
disp("Dischage through Rectangular orifice ="+string(q)+" m^3/sec");
