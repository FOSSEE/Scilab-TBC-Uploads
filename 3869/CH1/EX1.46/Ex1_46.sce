clear
//
//
//

//Variable declaration
lamda=6000*10**-8     //wavelength(cm)
n=1
mew=1.5     //refractive index
r=50*%pi/180    //angle of refraction(radian)

//Calculation
t=n*lamda/(2*mew*cos(r))          //least thickness of glass plate(cm)

//Result
printf("\n least thickness of glass plate is %0.2f  *10**-5 cm",t*10**5)
