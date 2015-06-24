//Finding of Coefficient of Lift ,Drag
//Given
A=25;
P=588.6*(7/10);
FL=19620;
V=200*(5/18);
rho=1000;
FD=7416;
//To Find
FD=(P*1000)/(V);
Cd=(FD*2)/(rho*A*(V^2));
Cl=(FL*2)/(rho*A*(V^2));
disp("Coefficient Of Lift ="+string(Cl)+" No Units");
disp("Coefficient Of Drag ="+string(Cd)+" No Units");
