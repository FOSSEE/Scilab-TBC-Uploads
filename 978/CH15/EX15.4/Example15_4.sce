//chapter-15,Example15_4,pg 512

We=7.6*10^-5//speed od gyro

L=490

d=0.094

c=3*10^8

delphi=7.69*10^-5//phase shift

lam=((2*%pi*L*d*We)/(c*delphi))//wavelength of laser light

printf("wavelength of laser light\n")

printf("lam=%.11f m",lam)