clear
//
//
//

//Variable declaration
NA=0.33    //numerical aperture
delta=0.02     //refractive index of cladding

//Calculation
x=1-delta
n1=sqrt(NA**2/(1-x**2))    //refractive index of core 
n2=x*n1                         //refractive index of cladding

//Result
printf("\n refractive index of core is %0.4f  ",n1)
printf("\n refractive index of cladding is %0.3f  ",n2)
