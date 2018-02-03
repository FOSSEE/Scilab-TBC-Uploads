clear
//
//
//

//Variable declaration
theta1=(8+(35/60))*%pi/180     //glancing angle(radian)
lamda=0.842        //wavelength of X-rays(angstrom)
n1=1               //order
n2=3               //order 

//Calculation
x=n2*lamda*sin(theta1)/(n1*lamda)                     
theta2=asin(x)*180/%pi           //glancing angle
theta2d=int(theta2)                      //glancing angle(degrees)
theta2m=(theta2-theta2d)*60              //glancing angle(minutes)

//Result
printf("\n glancing angle is %0.3f degrees %0.3f minutes",theta2d,theta2m)
printf("\n answer for glancing angle in minutes given in the book is wrong")
