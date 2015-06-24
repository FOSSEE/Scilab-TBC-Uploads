//To calculate the energy stored in the condensor and polarizing the dielectric
C = 2;     //capacitance, micro-farad
C = C*10^-6;      //capacitance, farad
V = 1000;    //voltage applied, V
epsilon_r = 100;     //permitivity
W = (C*V^2)/2;      //energy stored in capacitor, J
printf("energy stored in capacitor is %d J",W);
C0 = C/epsilon_r;   //capacitance removing the dielectric
W0 = C0*V^2/2;      //energy stored without dielectric, J
E = 1-W0;       //energy stored in dielectric, J
printf("energy stored in the dielectric is %5.2f J",E);
