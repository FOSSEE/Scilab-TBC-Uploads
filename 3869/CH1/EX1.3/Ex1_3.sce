clear
//
//
//

//Variable declaration
Y=1*10**-3           //distance between slits(m)
D=1                  //distance between slit and screen(m)
d=1*10**-3           //point distance(m)
lamda=5893*10**-10   //wavelength(angston)

//Calculation
delta1=Y*d/D                //path difference(m)
Pd=2*%pi*delta1/lamda   //phase difference(radian)
r=(cos(Pd/2))**2       //ratio of intensity
delta2=lamda/4              //path difference(m)
W=delta2*D/d                //distance of point on screen from centre(m)

//Result
printf("\n ratio of intensity is %0.4f  ",r)
printf("\n distance of point on screen from centre is %0.3f  *10**-4 m",W*10**4)
printf("\n answers in the book varies due to rounding off errors")
