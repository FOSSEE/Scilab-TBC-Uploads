clear
//
//
//

//Variable declaration    
h=6.6*10^-34;        //planck's constant(J-sec)
e=1.6*10^-19;        //charge of electron(c)
L=10^-1;        //width(m)
m=10^-2;    //mass of electron(kg)
n1=1;
n2=2;
n3=3;

//Calculations
E=h^2/(8*m*e*L^2);     //energy(eV)
E1=n1^2*h^2/(8*m*e*L^2);     //1st least energy(eV)
E2=n2^2*h^2/(8*m*e*L^2);     //2nd least energy(eV)
E3=n3^2*h^2/(8*m*e*L^2);     //3rd least energy(eV)

//Result
printf("\n 1st least energy is %0.1f *10^-45 eV",E1*10^45)
printf("\n 2nd least energy is %0.1f *10^-45 eV",E2*10^45)
printf("\n 3rd least energy is %0.1f *10^-45 eV",E3*10^45)
printf("\n energy levels are so close to each other that the energy states cannot be observed")
