//chapter9,Example9_1,pg 237

d=4.255*10^-10

lam=1.549*10^-10//wavelength of K-copper line

n=1//theta is smallest when n=1

theta=asin(lam/(2*d))//glancing angle

theta=theta*(180/%pi)

//max value of sin(theta)=1

//for highest order

nmax=((2*d)/lam)//highest bragg's order

printf("smallest glancing angle\n")

printf("theta=%.2f deg.",theta)

printf("\nmaximum order of reflection\n")

printf("nmax=%.2f",nmax)

printf("\nsince fraction is meaningless for order nmax=5")