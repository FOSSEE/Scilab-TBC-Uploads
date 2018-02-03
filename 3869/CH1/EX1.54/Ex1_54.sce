clear
//
//
//

//Variable declaration
R=70               //radius of curvature of lens(cm)
n=10
Dn=0.433           //diameter of 10th dark ring(cm)

//Calculation
lamda=Dn**2/(4*R*n)     //wavelength of light(cm)

//Result
printf("\n wavelength of light is %0.3f  *10**-5 cm",lamda*10**5)
printf("\n answer given in the book varies due to rounding off errors")
