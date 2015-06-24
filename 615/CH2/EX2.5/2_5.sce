//acids and bases//
//example 2.5//
K1=10^-8;//dissociation constant of weak mono basic acid//
N1=0.01;//normality of the acid//
V1=1/N1;
a1=sqrt(K1*V1);//degree of dissociation for weak acids//
H1=N1*a1;//H+ concentration of the solution//
pH1=-log10(H1);
printf("pH value of 0.01N solution of a weak mono basic acid is %f",pH1);
a2=4/100;//percentage of dissociation of acid at 20C//
N2=0.1;//normality of acid//
V2=1/N2;
K2=(a2^2)/V2;
K2a=K2/10^-4;
printf("\nThe dissociation constant of the acid is %f*10^-4",K2a);
N3=0.1;//normality of HCl//
pH3=-log10(N3);
printf("\nThe pH of the 0.1N HCl solution is %f",pH3);
N4=1/50;//normality of HCl//
pH4=-log10(N4);
printf("\nThe pH of the 1/50N HCl solution is %f",pH4);
N5=0.01;//normality of H2SO4//
pH5=-log10(N5);
printf("\nThe pH of the 0.01N H2SO4 solution is %f",pH5);