clear
//
//
//

//Variable declaration 
lamda=1.3;    //wavelength(micro m)
n1=1.5;       //core refractive index
Nm=1100;      //number of modes
delta=0.01;   //refractive index difference

//Calculations
d=lamda*sqrt(Nm/delta)/(%pi*n1);     //diameter of fibre core(micro m)

//Result
printf("\n diameter of fibre core is %0.1f micro m",d)
