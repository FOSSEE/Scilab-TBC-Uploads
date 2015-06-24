//To calculate the susceptibility
chi_1 = 2.8*10^-4;     //susceptibility
T1 = 350;      //temperature, K
T2 = 300;      //temperature, K
//chi = C/T where C is curie constant
chi_2 = chi_1*T1/T2;     //susceptibility at 300 K
printf("susceptibility at 300 K is %f",chi_2);
