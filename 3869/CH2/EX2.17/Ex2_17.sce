clear
//
//
//

//Variable declaration
theta=15*%pi/180            //angle(radian)
lamda=6500*10**-8               //wavelength(cm) 
n=1                             //order

//Calculation
a=n*lamda/sin(theta)       //slit width(cm)

//Result
printf("\n slit width is %0.2f  *10**-4 cm",a*10**4)
