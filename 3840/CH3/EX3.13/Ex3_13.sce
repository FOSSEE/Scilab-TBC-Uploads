clear
//
//
//

//Variable declaration
theta=(5+(25/60))*%pi/180     //glancing angle(radian)
lamda=0.675   //wavelength of X-rays(angstrom)
n1=1                  //order
n3=3                  //order 

//Calculation
d=n1*lamda/(2*sin(theta))       //lattice spacing(angstrom)
d=(d)

theta3=asin(n3*lamda/(2*d))*180/%pi     //glancing angle for 3rd order(degrees)
theta3d=int(theta3)                             //glancing angle for 3rd order(degrees)  
theta3m=(theta3-theta3d)*60                     //glancing angle for 3rd order(minutes)

//Result
printf("\n lattice spacing is %0.3f  angstrom",d)
printf("\n glancing angle for 3rd order is %0.3f degrees %0.1f minutes",theta3d,theta3m)
printf("\n answer for minutes given in the book varies due to rounding off errors")
