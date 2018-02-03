clear
//
//
//

//Variable declaration
n1=1.55       //Core refractive index
n2=1.6      //Cladding refractive index
theta1=60*%pi/180     //angle of incidence(radian)

//Calculation
x=n1*sin(theta1)/n2     
theta2=asin(x)*180/%pi        //angle of reflection(degrees)

//Result
printf("\n angle of reflection is %0.2f  degrees",theta2)
