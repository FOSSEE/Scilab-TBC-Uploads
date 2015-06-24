//Finding of Pressure Head ,Efficiency
//Given
Di=0.8;
Do=1.2;
V2=3;
L=8;
y=2;
Hs=6;
g=9.81;
//To Find
Q=(%pi/4)*Do^2*V2;
V1=Q/((%pi/4)*Di^2);
a=(V1^2/(2*g))-(V2^2/(2*g));
b=0.25*(V2^2/(2*g));
P=10.3-Hs-a-b;
E=(a-b)/(V1^2/(2*g));
E1=E*100;disp(V1);
disp("Pressure Head ="+string(P)+" meter of water");
disp("Efficiency ="+string(E1)+" Percentage");
