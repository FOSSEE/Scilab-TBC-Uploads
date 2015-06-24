//chapter8,Example8_2,pg 181

//for constructive interference of reflected light

//2*u*t*cos(r)=(2*n+1)(lam/2), where n=0,1,2,3

//for normal incidence

//r=0, cos(r)=1

t=5*10^-5

u=1.33

//for n=0 lam=lam1

lam1=4*u*t

//for n=1 lam=lam2

lam2=4*u*t*(1/3)

//for n=2 lam=lam3

lam3=4*u*t*(1/5)

//for n=3 lam=lam4

lam4=4*u*t*(1/7)

printf("wavelength that is strongly reflected in visible spectrum\n")

disp(lam3)