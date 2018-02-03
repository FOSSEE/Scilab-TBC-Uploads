clear
//
//
//

//Variable declaration
N=6000*10**2           //number of lines/m
m=3                    //order
lamda1=500*10**-9      //wavelength(m)
lamda2=510*10**-9      //wavelength(m)

//Calculation
sintheta1=m*N*lamda1   
theta1=asin(sintheta1)*180/%pi         //angle(degrees)
sintheta2=m*N*lamda2   
theta2=asin(sintheta2)*180/%pi         //angle(degrees)
theta=theta2-theta1                            //angular separation(degrees)

//Result
printf("\n angular separation is %0.2f  degrees",theta)
