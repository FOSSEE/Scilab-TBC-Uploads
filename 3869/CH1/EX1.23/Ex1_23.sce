clear
//
//
//

//Variable declaration
lamda=5890*10**-10               //wavelength(m)
mew=1.5                //refractive index
r=60*%pi/180       //angle of reflection(radian)

//Calculation
t=lamda/(2*mew*cos(r))     //required thickness of plate(m)

//Result
printf("\n required thickness of plate is %0.0f  angstrom",t*10**10)
