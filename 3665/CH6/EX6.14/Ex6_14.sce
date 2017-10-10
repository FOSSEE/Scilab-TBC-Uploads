clc//
//
//

//Variable declaration
E=1.5*9.1*10^-31;    //energy(joule)
m=1.676*10^-27;     //mass(kg)
h=6.62*10^-34;    //planck's constant

//Calculation
v=sqrt(2*E/m);    
lamda=h/(m*v);       //wavelength(m)

//Result
printf("\n wavelength is %0.3f *10^-6 m",lamda*10^6)
printf("\n answer varies due to rounding off errors")
