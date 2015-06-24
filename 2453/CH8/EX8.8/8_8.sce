//To calculate the forbidden energy gap
rho = 2.12;      //resistivity, ohm m
sigma = 1/rho;    //conductivity, ohm-1 m-1
e = 1.6*10^-19;
pi = 22/7;        //value of pi
m = 9.109*10^-31;    //mass of electron, kg
k = 1.38*10^-23;     //boltzmann constant
h = 6.626*10^-34;      //planck's constant
mew_e = 0.36;      //electron mobility, m^2/Vs
mew_h = 0.17;     //hole mobility, m^2/Vs
ni = sigma/(e*(mew_e+mew_h));       //intrinsic carrier density per m^3
C = 2*(2*pi*m*k/h^2)^(3/2);
T = 300;     //temperature, K
//let exp(Eg/(2*k*T)) be a
a = (C*T^(3/2))/ni;
//Eg/(2*k*T) = log(a) and Eg = 2*k*T*log(a)
Eg = 2*k*T*log(a)/e;      //forbidden energy gap, eV
printf("forbidden energy gap is %5.3f eV",Eg);

//answer given in the book is wrong
