clear
//
//
//

//Variable declaration
D5=0.336*10**-2       //diameter of 5th ring(m)
D15=0.59*10**-2       //diameter of 15th ring(m)
m=10
R=1      //radius of curvature(m)

//Calculation
lamda=((D15**2)-(D5**2))/(4*m*R)     //wavelength of light(m)

//Result
printf("\n wavelength of light is %0.0f  nm",lamda*10**9)
