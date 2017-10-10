clear
//
//
//

//Variable declaration    
h=6.626*10^-34;        //planck's constant(J-sec)
e=1.60*10^-19;        //charge of electron(c)
L=10^-10;        //width(m)
m=9.1*10^-31;    //mass of electron(kg)
n1=1;
n2=2;

//Calculations
E=h^2/(8*m*e*L^2);     //energy(eV)
E1=n1^2*h^2/(8*m*e*L^2);     //1st least energy(eV)
E2=n2^2*h^2/(8*m*e*L^2);     //2nd least energy(eV)
Ed=E2-E1
//Result
printf("\n 1st least energy is %0.2f eV",E1)
printf("\n 2nd least energy is %0.0f eV",E2)
printf("\n energy difference between ground state and 1st excited state is %0.2f eV",Ed)
printf("\n answer in the book varies due to rounding off errors")
