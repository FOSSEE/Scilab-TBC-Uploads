clear
//
//
//

//Variable declaration
w=0.02            //width(m)
theta=(%pi/180)*(18+(14/60))      //angle(radian)
n=1               
lamda=6.56*10**-7               //wavelength(m)

//Calculation
M=w*sin(theta)/(n*lamda)   //total number of lines in the grating 

//Result
printf("\n total number of lines in the grating is %0.1f  ",M)
printf("\n answer given in the book varies due to rounding off errors")
