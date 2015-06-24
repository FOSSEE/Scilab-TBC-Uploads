//Finding of Specific speed,Power generated
//Given
H=30;
N=300;
Q=10;
E=0.9;
g=9.81;
rho=1000;
//To Find
P=(E*rho*g*Q*H)/1000;
Ns=(N*sqrt(P))/(H)^(5/4);
disp("Power Developed ="+string(P)+" Kilowatts");
disp("Specific Speed ="+string(Ns)+" rpm");
