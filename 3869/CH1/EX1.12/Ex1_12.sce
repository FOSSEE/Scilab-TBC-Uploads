clear
//
//
//

//Variable declaration
mew=1.33        //refractive index
i=35*%pi/180      //angle of incidence(radian)
d=5*10**-5            //thickness(cm)
n1=1                  //order 
n2=2                  //order
n3=3                  //order 
n4=4                  //order

//Calculation
r=180/%pi*asin(sin(i)/mew)     //angle of reflection(degrees)
lamda1=2*mew*d*cos(r)/n1            //wavelength of light for 1st order(cm)
lamda2=2*mew*d*cos(r)/n2            //wavelength of light for 2nd order(cm)
lamda3=2*mew*d*cos(r)/n3            //wavelength of light for 3rd order(cm)
lamda4=2*mew*d*cos(r)/n4            //wavelength of light for 4th order(cm)

//Result
printf("\n wavelength of light for 1st order is %0.1f  *10**-5 cm",lamda1*10**5)
printf("\n answer in the book varies due to rounding off errors")
printf("\n wavelength of light for 2nd order is %0.2f  *10**-5 cm",lamda2*10**5)
printf("\n wavelength of light for 3rd order is %0.2f  *10**-5 cm",lamda3*10**5)
printf("\n wavelength of light for 4th order is %0.1f  *10**-5 cm",lamda4*10**5)
