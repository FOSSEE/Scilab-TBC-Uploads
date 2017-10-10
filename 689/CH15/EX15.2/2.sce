clc; funcprot(0);
//Example 15.2 Thrust of a fixed pitch propeller
// Initialisation of variables
V = 125*1.467;      // Velocity in ft/sec
n = 2200/60;        // Rotaion per second
D = 6;              // Diameter in ft
rho = 0.002378;

// Calculations
//For Beta = 23 degree
VnD0 = V/(n*D);
Ct0 = 0.075;
Cp0 = 0.076;
T0 = Ct0*rho*n^2*D^4;

V = [VnD0 0.6 0.5 0.4 0.3 0.2 0.1 0];
Ct = [Ct0 0.120 0.132 0.144 0.160 0.173 0.186 0.198];
Cp = [Cp0 0.103 0.108 0.112 0.118 0.122 0.124 0.127];
CtByCp = diag(Ct)/diag(Cp);
T = T0*(Cp0/Ct0)*CtByCp;
Eff = diag(V)*diag(CtByCp);
Result = zeros(8,6);
Result(:,1) = V';
Result(:,2) = Ct';
Result(:,3) = Cp';
Result(:,4) = diag(CtByCp);
Result(:,5) = diag(T);
Result(:,6) = Eff;

//Results 

disp(Result,"!!  V/nD        Ct       Cp       Ct/Cp        T            Efficiency   !!") ;
