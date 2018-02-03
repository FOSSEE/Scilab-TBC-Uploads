clear
//
//
//

//Variable declaration
lamda=5*10**-5      //wavelength(cm)
k=2                 //order
theta=30*%pi/180   //angle(radian)

//Calculation
e=k*lamda/sin(theta)     //number of lines(cm)
n=1/e                         //number of lines per centimeter      

//Result
printf("\n number of lines per centimeter is %0.3f ",n)
printf("\n answer given in the book is wrong")
