clear
//given
//find out brake mean effective pressure of a 6-cylinder
D=5**0.75
bhp=120.
l=8.
m=6.
n=1000.
bmep=1008000*((bhp/(D**2)*l*m*n))
printf("\n \n brake mean effective pressure %.2f psi",bmep/2.95)
