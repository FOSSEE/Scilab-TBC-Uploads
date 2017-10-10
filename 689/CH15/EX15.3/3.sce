clc; funcprot(0);
//Example 15.3 Power of a fixed pitch propeller
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

V = [VnD0 0.8 0.7 0.6 0.5 0.4 ];
Ct = [Ct0 0.082 0.100 0.120 0.132 0.144 ];
Cp = [Cp0 0.080 0.093 0.103 0.108 0.112 ];
CtByCp = diag(Ct)/diag(Cp);
T = T0*(Cp0/Ct0)*CtByCp;
Eff = diag(V)*diag(CtByCp);
Eff0 = Eff(1);
Cp0 = linspace(Cp0,Cp0, 6);
Cp0ByCp = diag(diag(Cp0)/diag(Cp))

Eff/Eff0;
Eff/Eff0*(n*60);
bhp = [125 123 117 112 110 109];        // From manufactures chart
thp = diag(bhp)*diag(Eff);

Result = zeros(6,11);
Result(:,1) = V';
Result(:,2) = Ct';
Result(:,3) = Cp';
Result(:,4) = Cp0ByCp;
Result(:,5) = Eff/Eff0;
Result(:,6) = Result(:,5)*2200;
Result(:,7) = bhp';
Result(:,8) = diag(CtByCp);
Result(:,9) = Eff;
Result(:,10) = diag(thp);
Result(:,11) = diag(diag(Result(:,1))*diag(Result(:,6))*(D/88));

//Results 

disp(Result,"!!  V/nD        Ct       Cp       CP0/Cp        n/n0       rpm    bhp    Ct/Cp       Efficiency   thp    V      !!") ;
disp("There is a calculation mistake in calculating n/no hence the dependent answer varies");
