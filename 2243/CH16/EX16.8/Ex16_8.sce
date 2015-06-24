clc();
clear;
//Given :
E1 = 8.55*10^10; //Modulus of elasticity in N/m^2
E2 = 21*10^10; // Modulus of elasticity in N/m^2
rho1 = 2650; // density of Quartz in kg/m^3
rho2 = 8800;// density of Nickel in kg/m^3
t = 2; // thickness of crystal in mm
l = 50; // rod length in mm
//Piezoelectric generator
printf("Piezoelectric generator \n\n");
for n = 1:3
    // 1 mm = 1.0*10^-3 m
    nu1 = (n/(2*t*10^-3))*sqrt(E1/rho1);// frequency in Hz 
    printf("For  n = %d  , Frequency  = %.2f  MHz\n",n,nu1*10^-6);
end
//Magnetostriction generator
printf("Magnetostriction generator\n\n");
for n1 = 1:3
     // 1 mm = 1.0*10^-3 m
    nu2 = (n1/(2*l*10^-3))*sqrt(E2/rho2);// frequency in Hz 
    printf("For  n = %d  , Frequency  = %.1f  kHz\n",n1,nu2*10^-3);
end
//Results differ from those in textbook, because in the formulae (n/(2*t))*sqrt(E/rho) and (n/(2*l))*sqrt(E/rho) , 2 is not multiplied with either t or l.
