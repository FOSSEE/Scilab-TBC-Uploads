clear
//
//
//

//Variable declaration
lamda=6000*10**-10      //wavelength(m)
a=12*10**-7             //slit width(m)

//Calculation
theta=asin(lamda/a)*180/%pi       //half angular width(degrees)

//Result
printf("\n half angular width is %0.0f  degrees",theta)
