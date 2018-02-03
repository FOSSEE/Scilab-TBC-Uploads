clear
//
//
//

//Variable declaration
lamda=6000*10**-8     //wavelength(cm)
n=1
mew=1.33     //refractive index
r=0*%pi/180    //angle of incidence(radian)

//Calculation
t=n*lamda/(2*mew*cos(r))          //thickness of thinnest film(cm)

//Result
printf("\n thickness of thinnest film is %0.4f  *10**-5 cm",t*10**5)
printf("\n answer given in the book is wrong")
