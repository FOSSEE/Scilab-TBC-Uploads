//To determine the position of Fermi level
Eg = 1.12;       //band gap, eV
k = 1.38*10^-23;
T = 300;     //temperature, K
e = 1.6*10^-19;
m0 = 1;     //for simplicity assume value of m0 to be unity
mh = 0.28*m0;
me = 0.12*m0;
EF = (Eg/2)+(3*k*T*log(mh/me)/(4*e));      //position of Fermi level, eV
printf("position of Fermi level is %5.3f eV from the top of valence band",EF);
