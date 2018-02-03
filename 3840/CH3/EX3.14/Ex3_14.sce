clear
//
//
//

//Variable declaration
d=3.04         //interplanar spacing(angstrom)             
lamda=0.79    //wavelength of X-rays(angstrom)
n=3

//Calculation
sintheta=n*lamda/(2*d)
theta=(5+(25/60))*%pi/180;     //glancing angle(radian)
thetad=asin(sintheta)*180/%pi            //glancing angle(degrees)
thetam=(theta-int(theta))*60                        //glancing angle(minutes)
thetas=60*(thetam-int(thetam))                  //glancing angle(seconds)

//Result
printf("\n glancing angle is %0.0f degrees %0.3f minutes %0.3f seconds",thetad,thetam,thetas)
printf("\n answer given in the book is wrong")
