//variable initialization
c1=0.01
c2=0.1
c3=1
c4=10
b=2.898*10^-3;                                                                  //Wien's constant (meter-kelvin)
h=(6.625*10^-34)/(2*%pi);                                                       //Planck's constant (joule-second)
c=3*10^8;                                                                       //speed of light (meter/second)
k=1.38*10^-23;                                                                  //Boltzmann constant (joule/kelvin)
T=3000                                                                          //Temperature of black body (kelvin)
Delta_lembda=1*10^-9;                                                           //wavelength interval (meter)

//(a)Average energy of Planck's oscillator:
E1=c1/(%e^c1-1);                                                                //Average energy of Planck's oscillator
E2=c2/(%e^c2-1);                                                                //Average energy of Planck's oscillator
E3=c3/(%e^c3-1);                                                                //Average energy of Planck's oscillator
E4=c4/(%e^c4-1);                                                                //Average energy of Planck's oscillator

//(b)Power radiated by a unit area of a black body
P=(4*%pi^2*h*c^2*T^5*Delta_lembda)/(b^5*((%e^((2*%pi*h*c)/(b*k)))-1));          //The power radiated per unit area (watt/meter^2)

printf("\n(a) The average energy of Planck`s oscillator:\n\t (i) Energy = %.3f kT\n\t (ii) Energy = %.2f kT\n\t (iii) Energy = %.2f kT\n\t (iv) Energy = %.5f kT\n\t k: Boltzmann constant = %.2e joule/kelvin    T: Temperature\n(b) The power radiated per unit area = %.2f watt/meter^2",E1,E2,E3,E4,k,P);
