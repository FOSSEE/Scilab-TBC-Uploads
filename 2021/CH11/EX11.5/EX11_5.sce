//Finding of Pressuure gradient.Avg velocity,Discharge,Shear at wall
//Given
mu=0.02;
B=0.01;
b=1;
v=2;
//To Find
A=B*b;
dp=-((16*mu)/B^2);
dp1=-dp;
V=(B^2/(12*mu))*(-dp);
q=A*V;
x=(-dp*(B/2))
disp(" Pressuure Gradient ="+string(dp1)+" N/m^2 per meter");
disp(" Avg velocity ="+string(V)+" m/sec");
disp(" Shear at wall ="+string(x)+" N//m^2");
