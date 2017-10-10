
//Variable declaration
r=5.29*10**-11;     //radius(m)
B=2;     //flux density(Wb/m**2)
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)

//Calculation
d_mew=e**2*r**2*B/(4*m);     //change in magnetic moment(A m**2)

//Result
printf('change in magnetic moment is %0.3f *10**-29 Am**2    \n',(d_mew*10**29))