//Finding of Coefficient of Discharge
//Given
d=0.03;
H=1.5;
Ad=2.35*10^-3;
g=9.81;
//To Find
a=(%pi/4)*d^2;
b=sqrt(2*g*H);
Td=b*a;
Cd=Ad/Td;
disp(" Coefficient of Discharge ="+string(Cd)+" No units");
