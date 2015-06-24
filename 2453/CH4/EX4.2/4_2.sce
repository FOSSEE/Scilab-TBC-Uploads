//To calculate the mobility of electrons
d = 8.92*10^3;      //density, kg/m^3
e = 1.6*10^-19;
m = 9.1*10^-31;      //mass of electron, kg
N = 6.02*10^26;      //avagadro's number per k-mol
AW = 63.5;     //atomic weight
rho = 1.73*10^-8;     //resistivity of copper, ohm-m
n = d*N/AW;       //number of cu atoms/m^3
mew = 1/(rho*n*e);      //mobility of electrons, m/Vs
printf("mobility of electrons is %f m/Vs",mew);
tow = m/(n*e^2*rho);    //relaxation time, s
printf("relaxation time in sec is");
disp(tow);
