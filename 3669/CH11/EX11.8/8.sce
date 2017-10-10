
//Variable declaration
NA=0.33;     //numerical aperture
delta=0.02;     //fractional refractive indices change

//Calculation
x=1-delta
y=sqrt(1-x**2);
n1=NA/y;       //refractive index of core
n2=n1*x;       //refractive index of cladding

//Result
printf('refractive index of core is %0.3f     \n',(n1))
printf('refractive index of cladding is %0.3f     \n',(n2))