

//Variable declaration
m=9.1*10**-31;     //mass(kg)
nx=1;
ny=1
nz=1
n=6;
a=1;     //edge(m)
h=6.63*10**-34;     //planck's constant
k=1.38
//Calculation
E1=h**2*(nx**2+ny**2+nz**2)/(8*m*a**2);
E2=h**2*n/(8*m*a**2);
E=E2-E1;               //energy difference(J)
T=(2*E2*10**37)/(3*k*10**-23)
//Result
printf('energy difference is%0.3f  *10**-37 J \n ',(E*10**37))
printf('3/2*k*T = E2 =%0.3f  *10**-37 J \n ',(E2*10**37))
printf('T =%0.3f *10**-14 K  \n ',(T/10**23))
