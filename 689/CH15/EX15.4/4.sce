clc; funcprot(0);
//Example 15.4 Thrust Horse Power for a fixed pitch propeller
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
RPM = Eff/Eff0*2200;
Cp0 = linspace(Cp0,Cp0, 6);
Cp0ByCp = diag(diag(Cp0)/diag(Cp))

Eff/Eff0;
Eff/Eff0*(n*60);
bhp = [125 123 117 112 110 109];        // From manufactures chart
thp = diag(bhp)*diag(Eff);
sigma = 0.7384;                         // From table 4.1;
Bhp10KBySL = 0.673;                     // Ratios of BHP from fig 14.3
RPMfactor = Bhp10KBySL/sigma;
BHPfactor = RPMfactor*Bhp10KBySL;

Result = zeros(6,9);
Result(:,1) = V';
Result(:,2) = RPM;
Result(:,3) = bhp';
Result(:,4) = diag(diag(Result(:,1))*diag(Result(:,2))*(D/88));
Result(:,5) = Eff;
Result(:,6) = RPM*RPMfactor;
Result(:,7) = bhp'*BHPfactor;
Result(:,8) = Result(:,4)*RPMfactor;
Result(:,9) = diag(diag(Result(:,7))*diag(Result(:,5)));
//Results 

disp(Result,"!! V/nD         rpm_SL       bhp_SL  V_SL         Eff_SL       rpm_10K      bhp_10K      V_10K        thp_10K      !!") ;
disp("There is a calculation mistake in calculating n/no hence the dependent answer varies");
