

//Example No.7.1
//Page No.207
//To find number of vacancies.
clc;clear;
Av = 6.022*10^(26);//Avogadro's constant.
d = 18630;//Density.
Aw = 196.9;//Atomic weight -[g/mol].
k = 1.38*10^(-23);//Boltzman's constant.
T = 900;//Temperature.
Ev = 0.98*1.6*10^(-19);//Energy of formation.
N = ((Av*d)/Aw);//Concentration of atoms.
printf("\nConcentration of atoms = %3.3e m^-3",N);
n = N*exp(-(Ev)/(k*T));//'n' is number of vacancy.
printf("\nThe number of vacancies for gold at 900 degree celcius is %3.3e vacancies per m^3",n);
T1 = 1000;
Vf = exp((-Ev)/(k*T1));//p=(n/N) is the vacancy fraction.
printf("\nVacancy fraction = %3.3e",Vf);

