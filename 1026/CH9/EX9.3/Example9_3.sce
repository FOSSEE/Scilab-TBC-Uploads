//chapter9,Example9_3,pg 238

//for 110 plane

a=3*10^-10//lattice parameter

d=(a/sqrt(2))//d110=(a/sqrt((1^2)+(1^2)+0))

theta=12.5*(%pi/180)//glancing angle

n=1

lam=2*d*sin(theta)//wavelength of x-ray

nmax=((2*d)/lam)//highest order

printf("wavelength of x-ray beam\n")

disp(lam)

printf("\nhighest braggs order\n")

printf("nmax=%.2f",nmax)

printf("\nfraction is meaningless so nmax=4")