//To calculate the magnetisation and flux density
H = 10^6;      //magnetic field intensity, amp/m
chi = 1.5*10^-3;     //susceptibility
mew0 = 4*%pi*10^-7;
M = chi*H;      //magnetisation, A/m
printf("magnetisation of material is %d A/m",M);
B = mew0*(M+H);      //flux density, T
printf("flux density is %5.4f T",B);

//answer given in the book is wrong
