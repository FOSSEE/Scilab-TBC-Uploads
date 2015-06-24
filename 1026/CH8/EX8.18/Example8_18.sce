//chapter8,Example8_18,pg 210

//nth order of lam1 is superimposed on (n+1)th order of lam2 for theta=30

//(a+b)sin(30)=n*5400*10^-8=(n+1)*4050*10^-8

lam1=5400*10^-8

lam2=4050*10^-8

n=(lam2/(lam1-lam2))

theta=30*(%pi/180)

N=sin(theta)/(n*lam1)

printf("lines/cm in grating\n")

printf("N=%.2f lines/cm",N)