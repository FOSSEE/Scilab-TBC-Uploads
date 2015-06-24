//To calculate the conductivity, equilibrium hole concentration and position of Fermi level
ni = 1.5*10^16;     ////intrinsic charge carriers per m^3
e = 1.6*10^-19;
mew_e = 0.135;      //electron mobility, m^2/Vs
mew_h = 0.048;      //hole mobility, m^2/Vs
sigma = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
printf("conductivity is %f ohm-1 m-1",sigma);
Nd = 10^23;      //phosphorus atoms per m^3
p = ni^2/Nd;     //hole concentration per m^3
printf("hole concentration per m^3 is");
disp(p);
sigma_ex = Nd*e*mew_e;      //conductivity, ohm-1 m-1
k = 1.38*10^-23;     //boltzmann constant
T = 300;     //temperature, K
//EF = (Eg/2)+(3*k*T*log(mew_e/mew_h)/4)
X = 3*k*T*log(mew_e/mew_h)/(4*e);
//EF = (Eg/2)+X
printf("EF = Eg/2 + %5.2f",X);
printf("Fermi level will be %5.2f eV above intrinsic level",X);
