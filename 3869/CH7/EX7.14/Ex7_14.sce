clear
//
//
//

//Variable declaration
lamda=97         //wavelength(pm)
n1=1             //order
n2=3             //order      
theta1=23*%pi/180       //glancing angle(radian)
theta2=60*%pi/180       //glancing angle(radian)

//Calculation
lamda1=n2*lamda*sin(theta1)/(n1*sin(theta2))     //wavelength(pm)
d=n2*lamda/(2*sin(theta2))            //interplanar spacing(pm)

//Result
printf("\n wavelength is %0.1f  pm",lamda1)
printf("\n interplanar spacing is %0.0f  pm",d)
printf("\n answer for wavelength given in the book varies due to rounding off errors")
