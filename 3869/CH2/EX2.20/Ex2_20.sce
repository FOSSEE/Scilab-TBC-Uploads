clear
//
//
//

//Variable declaration
n=1                //order
a=1*10**-6         //slit width(m)
lamda=600*10**-9   //wavelength of spectral line(m)

//Calculation
theta=asin(n*lamda/a)*180/%pi       //angular separation(degrees)

//Result
printf("\n angular separation is %0.4f  degrees",theta)
