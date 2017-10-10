clear
//
//
//

//Variable declaration 
V=2.405;     //V-number
lamda=1300*10^-3;    //wavelength(micro m)
n1=1.466;       //core refractive index
n2=1.46;     //cladding refractive index

//Calculations
r=V*lamda/(2*%pi*sqrt(n1^2-n2^2));     //maximum radius for fibre(micro m)

//Result
printf("\n maximum radius for fibre is %0.2f micro m",r)
printf("\n answer varies due to rounding off errors")
