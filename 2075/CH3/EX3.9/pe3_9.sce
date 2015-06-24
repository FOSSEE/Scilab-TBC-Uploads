//example 3.9
clc; funcprot(0);
// Initialization of Variable
Vin=1;
Ri=1100;
Rf=10000;
Rl=8;
Vs=18;
pi=3.1428;
//calculation
Ir=Vin/Ri;
Vl=Ir*(Ri+Rf);
Ip=Vl/Rl;
Pl=(Vl*Ip)/2;
disp(Pl,"power delivered to the load in Watt:-")
Ps=(Vs*Ip)/pi;
disp(Ps,"power provided by each supply in Watt:-")
clear()
