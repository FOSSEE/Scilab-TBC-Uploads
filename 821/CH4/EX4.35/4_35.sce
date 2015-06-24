C1=5*10^-4;
C2=2.5*10^-4;
x=(C1^2)/(C2+(2*C1));//The amount of Na+ transported at equilibrium in M//
printf('The amount of Na+ transported at equilibrium=x=2*10^-4M');
NaR=C2+x;//Na+ on RHS//
printf('\nNa+ on RHS=4.5*10^-4M.\nCl- on RHS=x=2*10^-4M.\nNa+ on LHS=Cl- on LHS=C1-x=3*10^-4M');
printf('\nE is in volts and F in coulombs.for homogeneity of units either R should be expressed in coulombs or F in calories.F is 96500C or 23060cal.');
F=23060;
n=1;
T=300;//temperature in kelvin//
R=2;
K=1.5;
E=(R*T*log(K))/(n*F);//Emf across membrane in volts//
printf('\nEmf across membrane=E=%fvolts',E);
