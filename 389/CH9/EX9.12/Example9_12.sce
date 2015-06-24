clear;
clc;

// Illustration 9.12
// Page: 429

printf('Illustration 9.12 - Page: 429\n\n');

// solution

// a:methanol b:water
// Vapour and liquid quantities throughout the tower, as in Illustration 9.8, with the Eqn. 9.62, 9.64, 9.72, 9.74:
// Data = [x tL(OC) y tG(OC) Vapor(kmol/h) Vapor(kg/h) Liquid(kmol/h) Liquid(kg/h)]
Ma = 34.02;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
Temp = 78.7;// [OC]
x = [0.915 0.600 0.370 0.370 0.200 0.100 0.02];
y = [0.915 0.762 0.656 0.656 0.360 0.178 0.032];
scf(17);
plot(x,y);
xgrid();
xlabel("mole fraction of methanol in liquid");
ylabel("mole fraction of methanol in vapour");
title("Operating Line curve");
//x = 0.370: the dividing point between stripping and enriching section
tL = [66 71 76 76 82 87 96.3];// [Bubble point, OC]
tG = [68.2 74.3 78.7 78.7 89.7 94.7 99.3];// [Dew Point, OC]
Vapor = [171.3 164.0 160.9 168.6 161.6 160.6 127.6];// [kmol/h]
Vapor1 = [5303 4684 4378 4585 3721 3296 2360];// [kg/h]
Liquid = [86.7 79.6 76.5 301 294 293 260];// [kmol/h]
Liquid1 = [2723 2104 1779 7000 6138 5690 4767];// [kg/h]
Data = zeros(7,8);
for j = 1:7
        Data(j,1) = x(j);
        Data(j,2) = tL(j);
        Data(j,3) = y(j);
        Data(j,4) = tG(j);
        Data(j,5) = Vapor(j); 
        Data(j,6) = Vapor1(j);
        Data(j,7) = Liquid(j);
        Data(j,8) = Liquid1(j);
end
// The tower diameter will be set by the conditions at the top of the stripping section because of the large liquid flow at this point.
// From Illustration 9.8:
G = Data(4,6);
L = Data(4,8);
Density_G = (Data(4,6)/(22.41*Data(4,5)))*(273/(273+Temp));// [kg/cubic m]
Density_L = 905;// [kg/cubic m]
// abcissa = (L/G)*(Density_L/Density_G)^0.5
abcissa = (Data(4,8)/Data(4,6))*(Density_G/Density_L)^0.5;
// From Fig. 6.34, choose a gas pressure drop of 450 N/square m/m
ordinate = 0.0825;
// From Table 6.3 (Pg 196):
Cf = 95;
viscosity_L = 4.5*10^(-4);// [kg/m.s]
sigma = 0.029;// [N/m]
J = 1;
G_prime = (ordinate*Density_G*(Density_L-Density_G)/(Cf*viscosity_L^0.1))^0.5;// [kg/square m.s]
A = G/(3600*G_prime);// [Tower ,cross section area,square m]
L_prime = L/(A*3600);// [kg/square m.s]
// Mass transfer will be computed for the same location:
// From Table 6.4 (Pg 205):
m = 36.4;
n = (0.0498*L_prime)-0.1013;
p = 0.274;
aAW = m*((808*G_prime/Density_G^0.5)^n)*L_prime^p;// [square m/cubic m]
// From Table 6.5 (Pg 206):
dS = 0.0530;// [m]
beeta = 1.508*dS^0.376;
shi_LsW = 2.47*10^(-4)/dS^1.21;
shi_LtW = ((2.09*10^(-6))*(737.5*L_prime)^beeta)/dS^2;
shi_LOW = shi_LtW-shi_LsW; 
shi_Ls = (0.0486*viscosity_L^0.02*sigma^0.99)/(dS^1.21*Density_L^0.37);
H = ((975.7*L_prime^0.57*viscosity_L^0.13)/(Density_L^0.84*((2.024*L_prime^0.430)-1)))*(sigma/0.073)^(0.1737-0.262*log10(L_prime));// [m]
shi_Lo = shi_LOW*H;
shi_Lt = shi_Lo+shi_Ls;
// From Eqn. 6.73:
aA = aAW*(shi_Lo/shi_LOW);// [square m/cubic m]
// From Table 6.3 (Pg 196):
e = 0.71;
// From Eqn. 6.71:
eLo = e-shi_Lt;
// From Chapter 2:
ScG = 1;
MavG = 0.656*Ma+(1-0.656)*Mb;// [kg/kmol]
G = G_prime/MavG;
viscosity_G = 2.96*10^(-5);// [kg/m.s]
// From Eqn. 6.70:
Fg = (1.195*G/ScG^(2/3))*((dS*G_prime/(viscosity_G*(1-eLo)))^(-0.36));// [kmol/square m s (mole fraction)]
kY_prime = Fg;// [kmol/square m s (mole fraction)]
DL = 4.80*10^(-9);// [square m/s]
ScL = viscosity_L/(Density_L*DL);
// From Eqn. 6.72:
kL = (25.1*DL/dS)*((dS*L_prime/viscosity_L)^0.45)*ScL^0.5;// [kmol/square m s (kmol/cubic m)]
// At 588.33 OC
Density_W = 53.82;// [kg/cubic m]
kx_prime = Density_W*kL;// [kmol/square m s (mole fraction)]
// Value1 = [x G a ky_prime*10^3 kx_prime]
Value1 = [0.915 0.0474 20.18 1.525 0.01055;0.6 0.0454 21.56 1.542 0.00865;0.370 0.0444 21.92 1.545 0.00776;0.370 0.0466 38 1.640 0.0143;0.2 0.0447 32.82 1.692 0.0149;0.1 0.0443 31.99 1.766 0.0146;0.02 0.0352 22.25 1.586 0.0150];
// From Fig: 9.50
// At x = 0.2:
y = 0.36;
slope = -(Value1(5,5)/(Value1(5,4)*10^(-3)));
// The operating line drawn from(x,y) with slope. The point where it cuts the eqb. line gives yi.
// K = ky_prime*a(yi-y)
// For the enriching section:
// En = [y yi 1/K Gy]
En = [0.915 0.960 634 0.0433;0.85 0.906 532.8 0.0394;0.8 0.862 481.1 0.0366;0.70 0.760 499.1 0.0314;0.656 0.702 786.9 0.0292];
// For the Stripping section:
// St = [y yi 1/K Gy]
St = [0.656 0.707 314.7 0.0306;0.50 0.639 124.6 0.0225;0.40 0.580 99.6 0.01787;0.3 0.5 89 0.0134;0.2 0.390 92.6 0.00888;0.10 0.232 154.5 0.00416;0.032 0.091 481 0.00124];
// Graphical Integration, according to Eqn.9.52::
scf(18);
plot(En(:,4),En(:,3));
xgrid();
xlabel("Gy");
ylabel("1 / (ky_prime*a*(yi-y))");
title("Graphical Integration for Enriching section");
// From Area under the curve:
Ze = 7.53;// [m]
// Graphical Integration:
scf(19);
plot(St(:,4),St(:,3));
xgrid();
xlabel("Gy");
ylabel("1 / (ky_prime*a*(yi-y))");
title("Graphical Integration for Stripping section");
// From Area under the curve:
Zs = 4.54;// [m]
// Since the equlibrium curve slope varies so greatly that the use of overall mass transfer coeffecient is not recommended:
printf("Height of Tower for enriching Section is %f m\n",Ze);
printf("Height of Tower for Stripping Section is %f m\n",Zs);