clear
//
//
//

//Variable declaration
lamda=5000*10**-8     //wavelength(cm)
n=16
mew=1.56     //refractive index

//Calculation
t=n*lamda/(mew-1)          //thickness(cm)

//Result
printf("\n thickness is %0.1f  *10**-4 cm",t*10**4)
