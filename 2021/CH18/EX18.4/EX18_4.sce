//Finding of Power delivered , Efficiency
//Given
Q=1.8;
theta=12; 
Hg=450;
H=300;
hf=Hg/3;
Cv=0.98;
g=9.81;
a=0.46;
rho=1000;
//To Find
V=Cv*sqrt(2*g*H);
u=a*V;
Vr=V-u;disp(V);
Vw1=Vr*cos(%pi/15)-u;
W=rho*(Q*(V+Vw1)*u);
P=W/1000;disp(V);
E=(2*(V+Vw1)*u)/V^2;
E1=E*100;
disp("Power delivered ="+string(P)+" Kilo watts");
disp("Hydraulic Efficiency ="+string(E1)+" percentage");
