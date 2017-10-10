//Variable declaration
nx=1
ny=1
nz=1
a=1
h=6.63*10**-34
m=9.1*10**-31

//Calculations
E1=h**2*(nx**2+ny**2+nz**2)/(8*m*a**2)
E2=(h**2*6)/(8*m*a**2)             //nx**2+ny**2+nz**2=6
diff=E2-E1
//Result
printf('E1 =%0.3f  *10**-37 Joule \n ',(E1*10**37))
printf('E2 =%0.3f  *10**-37 Joule \n ',(E2*10**37))
printf('E2-E1 =%0.3f *10**-37 J  \n ',(diff*10**37))