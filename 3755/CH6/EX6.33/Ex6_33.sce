clear
//
//
//

//Variable declaration    
h=6.63*10^-34;        //planck's constant(J-sec)
e=1.6*10^-19;        //charge of electron(c)
L=10^-9;        //width(m)
m=9.1*10^-31;    //mass of electron(kg)
n1=1;
n2=2;
n3=3;

//Calculations
lamda1=2*L*10^10/n1;        //wavelength in 1st energy state(angstrom)
lamda2=2*L*10^10/n2;        //wavelength in 2nd energy state(angstrom)
lamda3=2*L*10^10/n3;        //wavelength in 3rd energy state(angstrom)
E=h^2/(8*m*e*L^2);     //energy(eV)
E1=n1^2*h^2/(8*m*e*L^2);     //1st least energy(eV)
E2=n2^2*h^2/(8*m*e*L^2);     //2nd least energy(eV)
E3=n3^2*h^2/(8*m*e*L^2);     //3rd least energy(eV)

//Result
printf("\n wavelength in 1st energy state is %0.0f angstrom",lamda1)
printf("\n wavelength in 2nd energy state is %0.0f angstrom",lamda2)
printf("\n wavelength in 3rd energy state is %0.2f angstrom",lamda3)
printf("\n 1st least energy is %0.2f eV",E1)
printf("\n 2nd least energy is %0.4f eV",E2)
printf("\n 3rd least energy is %0.3f eV",E3)
printf("\n answers for 2nd and 3rd least energies varies due to rounding off errors")
