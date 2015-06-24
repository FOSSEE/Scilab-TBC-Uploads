//chapter-15,Example15_1,pg 470

n1=1.48//refractive index of fibre

mu=0.2//poisson's ratio

p=2.2*10^2//pressure applied

lam=690*10^-9//laser beam wavelength

Y=2.2*10^11//young's modulus

delphi=((4*%pi*n1*mu*p)/(lam*Y))//increamental phase

printf("increamental phase\n")

printf("delphi=%.5f rad",delphi)