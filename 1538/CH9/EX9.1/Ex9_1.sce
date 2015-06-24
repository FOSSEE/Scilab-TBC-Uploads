//example-9.1
//page no-259
//given
//bonding characteristics of a material are
n=1
m=9
A=7.56*10^-29   //J m
//initial bond length
r_0=2.3*10^-10   //m
//this bond length exceed by 15 %
//so extension is 
e=15/100*r_0   //m
//new bond length will be
r=r_0+e   //m
//the axial tensile starin is given by
epsilon_t=e/r_0   //(change in dimension /original dimension)
//according to P-r function we have
B=A*r_0^8/9   //J m^9
//we have double deravative of P as
double_derivative_P=-2*A/r_0^3+90*B/r_0^11   ///J/m^2
//so youngs modulus will be given by
E=double_derivative_P/r_0*10^-9   //GPa  (some approximation is done in book)
printf ("the axial stain is %.2f \n and youngs modulus of elasticity is %e GPa ", epsilon_t,E)
