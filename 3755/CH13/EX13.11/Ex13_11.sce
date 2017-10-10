clear
//
//
//

//Variable declaration 
V=2.405;     //V-number
lamda=8500*10^-10;    //wavelength(m)
n1=1.48;       //core refractive index
n2=1.47;     //cladding refractive index

//Calculations
d=V*lamda/(%pi*sqrt(n1^2-n2^2));     //diameter of core(m)

//Result
printf("\n diameter of core is %0.2f *10^-6 m",d*10^6)
