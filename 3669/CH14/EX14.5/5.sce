
//Variable declaration
D10=0.5*10**-2;     //diameter of 10th ring(m)
lamda=5900*10**-10;    //wavelength of light(m)
n=10;

//Calculation
R=D10**2/(4*n*lamda);     //radius of curvature(m)

//Result
printf('radius of curvature is %0.3f   m  \n',(R))