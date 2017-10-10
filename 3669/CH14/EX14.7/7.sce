
//Variable declaration
lamda=500*10**-9;    //wavelength(m)
n=10;
D10=2*10**-3;     //diameter(m)

//Calculation
r10=D10/2;    //radius(m)
R=D10**2/(4*n*lamda);
t=r10**2/(2*R);        //thickness(m)

//Result
printf('thickness is %0.3f    micro m \n',t*10**6)