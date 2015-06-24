//To calculate the relaxation time
rho = 1.54*10^-8;      //resistivity, ohm-m
n = 5.8*10^28;      //conduction electrons per m^3
m = 9.108*10^-31;    //mass of electron, kg
e = 1.602*10^-19;
tow = m/(n*e^2*rho);    //relaxation time, sec
printf("relaxation time of conduction electrons in sec is");
disp(tow);
