//chapter9,Example9_7,pg 239

V=50*10^3

lam=(12400/V)*10^-10

n=4//FCC crystal

m=74.6

N=6.022*10^26

rho=1.99*10^3

a=(((n*m)/(N*rho))^(1/3))

//for kcl ionic crystal

d=a/2

theta=asin(lam/(2*d))

theta=theta*(180/%pi)

printf("min. wavelength of spectrum from tube\n")

disp(lam)

printf("glancing angle for that wavelength\n")

printf("theta=%.2f deg.",theta)