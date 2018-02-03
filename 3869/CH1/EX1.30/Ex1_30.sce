clear
//
//
//

//Variable declaration
Dn=2*10**-3           //diameter of ring(m)
n=10
lamda=500*10**-9      //wavelength(m)

//Calculation
R=Dn**2/(4*n*lamda)     //radius(m)
t=Dn**2/(8*R)           //thickness of air film(m)

//Result
printf("\n thickness of air film is %0.3f  micro m",t*10**6)
