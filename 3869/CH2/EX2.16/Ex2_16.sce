clear
//
//
//

//Variable declaration
N=10000/2*10**2           //number of lines/m
m=1                       //order
lamda1=5890*10**-10        //wavelength(m)
lamda2=5896*10**-10        //wavelength(m)

//Calculation
sintheta1=m*N*lamda1   
theta1=asin(sintheta1)*180/%pi         //angle(degrees)
sintheta2=m*N*lamda2   
theta2=asin(sintheta2)*180/%pi         //angle(degrees)
theta=theta2-theta1                            //angular separation(degrees)

//Result
printf("\n angular separation is %0.3f  degrees",theta)
