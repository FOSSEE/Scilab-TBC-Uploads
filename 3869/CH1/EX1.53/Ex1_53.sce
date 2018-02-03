clear
//
//
//

//Variable declaration
lamda=5890*10**-8     //wavelength(cm)
Dm=0.590     //diameter of 8th ring(cm)
Dn=0.336     //changed diameter of 8th ring(cm)
m=15
n=5

//Calculation
R=(Dm-Dn)/(4*lamda*(m-n))     //radius of curvature of lens(cm)

//Result
printf("\n radius of curvature of lens is %0.1f  cm",R)
