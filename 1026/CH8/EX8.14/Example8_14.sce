//chapter8,Example8_14,pg 209

grat=1/1250//transmission grating

n=2

theta=30*(%pi/180)//deviation angle

//(a+b)sin(theta)=n*lam

//grat=(a+b)

lam=(grat*sin(theta))/n//wavelength of spectral line

printf("wavelength of spectral line\n")

printf("lam=%.6f cm",lam)