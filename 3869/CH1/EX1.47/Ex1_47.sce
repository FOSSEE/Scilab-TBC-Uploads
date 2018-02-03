clear
//
//
//

//Variable declaration
lamda=5000*10**-8     //wavelength(cm)
mew=1.5     //refractive index
beta1=1      //assume
S=6*beta1

//Calculation
t=S*lamda/(beta1*(mew-1))          //least thickness of glass plate(cm)

//Result
printf("\n least thickness of glass plate is %0.0f  *10**-4 cm",t*10**4)
