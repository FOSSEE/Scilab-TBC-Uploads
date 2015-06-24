//To calculate the conductivity of intrinsic Silicon
ni = 1.5*10^16;      //intrinsic charge carriers per m^3
e = 1.6*10^-19;
mew_e = 0.13;      //electron mobility, m^2/Vs
mew_h = 0.05;      //hole mobility, m^2/Vs
sigma = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
printf("conductivity is %f ohm-1 m-1",sigma);
AW = 28.1;      //atomic weight of Si, kg
d = 2.33*10^3;     //density of Si, kg/m^3
N = 6.02*10^26;    //avagadro number
Nd = d*N/AW;      //impurity atoms per m^3
Nd = Nd/10^8;     //extent of 10^8 Si atoms
p = ni^2/Nd;      //hole concentration per m^3
sigma_ex = Nd*e*mew_e;       //conductivity, ohm-1 m-1
printf("conductivity if donor type impurity is added is %5.2f ohm-1 m-1",sigma_ex);
Na = Nd;
n = ni^2/Na;      //electron concentration per m^3
sigma_EX = Na*e*mew_h;       //conductivity, ohm-1 m-1
printf("conductivity if acceptor type impurity is added is %5.2f ohm-1 m-1",sigma_EX);
