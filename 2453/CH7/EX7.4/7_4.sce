//To calculate the magnetisation and flux density
H = 10^4;      //magnetic field intensity, amp/m
chi = 3.7*10^-3;     //susceptibility
mew0 = 4*%pi*10^-7;
M = chi*H;      //magnetisation, A/m
printf("magnetisation of material is %d A/m",M);
B = mew0*(M+H);      //flux density, Wb/m^2
printf("flux density is %5.4f Wb/m^2",B);
