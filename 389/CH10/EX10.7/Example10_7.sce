clear;
clc;

// Illustration 10.7
// Page: 525

printf('Illustration 10.7 - Page: 525\n\n');
// solution

//****Data****//
// c:Water d:Toulene 
Density_c = 998;// [kg/cubic m]
viscosity_c = 0.95*10^(-3);// [kg/m.s]
Dc = 2.2*10^(-9);// [square m/s]
Density_d = 865;// [kg/cubic m]
viscosity_d = 0.59*10^(-3);// [kg/m.s]
Dd = 1.5*10^(-9);// [square m/s]
sigma = 0.022;// [N/m]
Dist = 20.8;// [Distribution Coeffecient]
d = 0.5;// [m]
h = 0.5;// [m]
di = 0.15;// [m]
N = 13.3;// [r/s]
g = 9.81;// [m/s^2]
qC = 3*10^(-3);// [cubic m/s]
qD = 3*10^(-4);// [cubic m/s]
//********//

V = %pi*h*d^2/4;// [Vessel volume,cubic m]
phi_DF = qD/(qD+qC);// [Volume fraction toulene]
// Assume:
phi_Dbyphi_DF = 0.9;
phi_D = phi_Dbyphi_DF*phi_DF;
phi_W = 1-phi_D;
// From Eqn. 10.56:
Density_M = (Density_c*phi_W)+(Density_d*phi_D);// [kg/cubic m]
if phi_W>0.4
    viscosity_M = (viscosity_c/phi_W)*(1+(6*viscosity_d*phi_D/(viscosity_d+viscosity_c)));// [kg/m s]
else
    viscosity_M = (viscosity_c/phi_D)*(1-(1.5*viscosity_c*phi_W/(viscosity_d+viscosity_c)));// [kg/m s]
end
// Impeller Reynold's Number:
IRe = (di^2*N*Density_M/viscosity_M);
// From Fig 6.5 (Pg 152), curve g:
Po = 0.72;
P = Po*Density_M*N^3*di^5;// [W]
// From Eqn. 10.61:
Value1 = P*qD*viscosity_c^2/(V*sigma^3);
Value2 = viscosity_c^3/(qD*Density_c^2*sigma);
Value3 = Density_c/(Density_c-Density_d);
Value4 = sigma^3*Density_c/(viscosity_c^4*g);
Value5 = viscosity_d/viscosity_c;
phi_Dbyphi_DF = 3.39*Value1^0.247*Value2^0.427*Value3^0.430*Value4^0.401*Value5^0.0987;
// The value of phi_Dbyphi_DF is sufficiently close to the value 0.90 assumed earlier.
phi_D = phi_Dbyphi_DF*phi_DF;
// From Eqn. 10.6:
Value6 = viscosity_c/Density_c;// [square m/s]
Value7 = P/(V*Density_M);
Value8 = sigma/Density_c;
dp = 10^(-2.066+(0.732*phi_D))*Value6^0.0473*Value7^(-0.204)*Value8^(0.274);// [m]
a = 6*phi_D/dp;// [square m/cubic m]
Sca = viscosity_c/(Density_c*Dc);
// From Eqn. 10.65:
Shc = 65.3;
kLc = Shc*Dc/dp;// [kmol/square m s (kmol/cubic m)]
thetha = V/(qD+qC);// [s]
// From Table 10.1 (Pg 524):
// lambda = [lambda1 lambda2 lambda3]
lambda = [1.359 7.23 17.9];
// B = [B1 B2 B3]
B = [1.42 0.603 0.317];
Val = zeros(1,3);
Sum = 0;
for n = 1:3
    Val(n) = (B(n)^2)*exp((-lambda(n))*64*Dd*thetha/dp^2);
    Sum = Sum+Val(n);
end
// From Eqn. 10.66:
kLd = -(dp/(6*thetha))*log((3/8)*Sum);
mCD = 1/Dist;
// From Eqn. 10.67:
KLd = 1/((1/kLd)+(1/(mCD*kLc)));// [kmol/square m s (kmol/cubic m)]
Z = 0.5;// [m]
Vd = qD/(%pi*Z^2/4);// [m/s]
// From Eqn.10.70:
NtoD = Z/(Vd/(KLd*a));
// From Eqn. 10.71:
EMD = NtoD/(NtoD+1);
printf("Expected stage efficiency: %f\n",EMD);