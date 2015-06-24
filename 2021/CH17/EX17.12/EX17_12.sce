//Finding of Propelling Force, Efficiency
//Given
u=35*(5/18);
V=25;
a=0.04;
rho=1000;
//To Find
P=rho*a*(V+u)*V;
E=(2*u)/(V+(2*u));
E1=E*100;
disp("Propelling Force ="+string(P)+" Newtons");
disp("Efficiency ="+string(E1)+" No Units");
