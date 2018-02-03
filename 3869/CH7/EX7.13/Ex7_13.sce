clear
//
//
//

//Variable declaration
lamda=0.12         //wavelength(nm)
n=2                        //order
theta=28*%pi/180       //glancing angle(radian)

//Calculation
d=n*lamda/(2*sin(theta))     //interplanar spacing(nm)

//Result
printf("\n interplanar spacing is %0.2f  nm",d)
