//To calculate the energy required and seperation between ion pair
IP_K = 4.1;     //IP of K, eV
EA_Cl = 3.6;     //EA of Cl, eV
e = 1.602*10^-19;
epsilon0 = 8.85*10^-12; 
delta_E = IP_K - EA_Cl;      //energy required, eV
printf("energy required to form K+Cl- ion pair is %f eV",delta_E);
//if their total energy is 0, delta_E = Ec
Ec = delta_E;
R = e/(4*%pi*epsilon0*Ec);      //seperation between ion pair, m
R = R*10^9;          //seperation between ion pair, nm
printf("seperation between ion pair is %5.2f nm",R);
