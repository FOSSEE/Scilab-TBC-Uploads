//To calculate the intrinsic carrier density and conductivity
m = 9.109*10^-31;    //mass of electron, kg
k = 1.38*10^-23;     //boltzmann constant
pi = 22/7;        //value of pi
h = 6.626*10^-34;      //planck's constant
T = 300;     //temperature, K
e = 1.6*10^-19;
Eg = 0.7;    //energy gap, eV
ni = 2*(2*pi*m*k*T/h^2)^(3/2)*exp(-Eg*e/(2*k*T));     //intrinsic carrier density per m^3
printf("intrinsic carrier density per m^3 is");
disp(ni);
mew_e = 0.4;      //electron mobility, m^2/Vs
mew_h = 0.2;     //hole mobility, m^2/Vs
sigma = ni*e*(mew_e+mew_h);      //conductivity, ohm-1 m-1
printf("conductivity is %5.2f ohm-1 m-1",sigma);

//answer given in the book is wrong
