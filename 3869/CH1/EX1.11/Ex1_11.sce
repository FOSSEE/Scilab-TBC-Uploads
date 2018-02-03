clear
//
//
//

//Variable declaration
v=0.2         //volume(cc)
a=1*10**4     //area(cm**2)
r=0
n=1
lamda=5.5*10**-5      //wavelength(cm)
t=2

//Calculation
d=v/a       //thickness of film(cm)
mew=n*lamda/(2*t*cos(r))      //refractive index of oil

//Result
printf("\n refractive index of oil is %0.2f  *10**-5",mew*10**5)
printf("\n answer given in the book is wrong")
