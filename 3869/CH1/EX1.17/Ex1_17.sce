clear
//
//
//

//Variable declaration
i=60*%pi/180       //angle of incidence(radian)
mew=1.33          //refractive index
t=1.5*10**-6      //thickness(m)
lamda=5*10**-7    //wavelength(m)

//Calculation
r=(180/%pi)*asin(sin(i)/mew)     //angle of reflection(degrees)
r=(r)*%pi/180            //angle of reflection(degrees)

n=2*mew*t*cos(r)/lamda                    //order of interference

//Result
printf("\n order of interference is %0.3f  ",n)
