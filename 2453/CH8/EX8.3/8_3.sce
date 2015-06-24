//To calculate the concentration of intrinsic charge carriers
T = 300;      //temperature, K
pi = 22/7;    //value of pi
e = 1.6*10^-19;
m = 9.109*10^-31;     //mass of electron, kg
k = 1.38*10^-23;      //boltzmann's constant
h = 6.626*10^-34;     //planck's constant
Eg = 0.7;      //band gap, eV
Eg = Eg*e;     //band gap, J
A = (2*pi*m*k*T/h^2)^(3/2);
B = exp(-Eg/(2*k*T));
ni = 2*A*B;     //concentration of intrinsic charge carriers per m^3
printf("concentration of intrinsic charge carriers per m^3 is");
disp(ni);
