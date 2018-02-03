clear
//
//
//

//Variable declaration
mew=1.5          //refractive index
lamda=5890*10**-10    //wavelength(m)
r=60*%pi/180      //angle of reflection(radian)

//Calculation
t=lamda/(2*mew*cos(r))       //smallest thickness of the plate(m)

//Result
printf("\n smallest thickness of the plate is %0.0f  angstrom",t*10**10)
