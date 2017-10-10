
//Variable declaration
D15=0.59*10**-2;     //diameter of 15th ring(m)
D5=0.336*10**-2;     //diameter of 5th ring(m)
R=1;    //radius(m)
m=10;

//Calculation
lamda=((D15**2)-(D5**2))/(4*m*R);     //wavelength of light(m)

//Result
printf('wavelength of light is %0.3f   angstrom  \n',int(lamda*10**10))