clc//
//
//

//Variable declaration
d100=0.28;    //spacing(nm)
lamda=0.071;    //wavelength of X rays(nm)
n=2;    //second order

//Calculation
d110=(d100/sqrt(2));     //spacing(nm)

x=n*lamda/(2*d110);
theta=asin(x);    //glancing angle(radian)
theta=theta*180/%pi ;     //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.0f degrees",theta)
