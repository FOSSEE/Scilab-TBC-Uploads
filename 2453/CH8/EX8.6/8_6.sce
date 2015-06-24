//To calculate the conductivity
m = 9.109*10^-31;    //mass of electron, kg
k = 1.38*10^-23;     //boltzmann constant
pi = 22/7;        //value of pi
h = 6.626*10^-34;      //planck's constant
C = 2*(2*pi*m*k/h^2)^(3/2);
T = 300;     //temperature, K
e = 1.6*10^-19;
Eg = 1.1;    //energy gap, eV
mew_e = 0.48;      //electron mobility, m^2/Vs
mew_h = 0.013;     //hole mobility, m^2/Vs
ni = C*T^(3/2)*exp(-Eg*e/(2*k*T));      //intrinsic carrier density per m^3
sigma_i = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
printf("conductivity is %f ohm-1 m-1",sigma_i);

//answer given in the book is wrong
