//To calculate the energy band gap
rho_2 = 4.5;      //resistivity at 20C
rho_1 = 2;        //resistivity at 32C
T1 = 20;      //temperature, C
T1 = T1+273;     //temp, K
T2 = 32;    //temp, C
T2 = T2+273;     //temp, K
k = 8.616*10^-5;
dy = log10(rho_2)-log10(rho_1);
dx = (1/T1)-(1/T2);
Eg = 2*k*dy/dx;       //energy band gap, eV
printf("energy band gap is %5.3f eV",Eg);

//answer given in the book is wrong
