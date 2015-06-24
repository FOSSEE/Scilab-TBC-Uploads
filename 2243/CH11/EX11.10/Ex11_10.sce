clc();
clear;
//Given :
Ecd = 0.045; // Ec-Ed in eV
Ecf = 0.035; // Ec-Ef in eV
Efd = 0.01;// Ef-Ed in eV
Ev = 0; // in eV
Ef = 1.065; // in eV
me = 9.1*10^-31;// electron mass in kg
m_e = 0.31*me; // free electron mass
m_h = 0.38*me;// hole mass
kT = 0.026; // kT value at room temperature
h = 6.625*10^-34; // planck's constant in Js
Nc = 2*((2*%pi*m_e*kT*1.6*10^-19)/(h^2))^(3/2); // per m^3
Nv = 2*((2*%pi*m_h*kT*1.6*10^-19)/(h^2))^(3/2); // per m^3
//(a)
// Nc*exp[-(Ec-Ef)/kT] = Nd*[1 - 1/(1+ exp[(Ed-Ef)/kT])]
//Ed - Ef = -(Ef-Ed) = - Efd
Nd = (Nc*exp(-Ecf/kT))/(1 - (1/(1+exp(-Efd/kT)))); // per m^3
//(b)
Nd_plus = Nd*(1 - (1/(1 + exp(-Efd/kT)))); // per m^3
//(c)
n = Nc*exp(-Ecf/kT); // per m^3
//(d)
p = Nv*exp((Ev-Ef)/kT);// per m^3
printf("Nd = %.1f x 10^24 / m^3 \n",Nd*10^-24);
printf("Nd_plus = %.2f x 10^24 / m^3 \n",Nd_plus*10^-24);
printf("n = %.2f x 10^24 / m^3\n",n*10^-24);
printf("p = %.1f x 10^6 / m^3",p*10^-6);
