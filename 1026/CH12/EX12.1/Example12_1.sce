//chapter12,Example12_1,pg 357

n1=1.53//refractive index

n2=1.5

lam=1*10^-6//wavelength

a=50*10^-6

NA=sqrt((n1^2)-(n2^2))

V=((2*%pi*a)*NA)/lam

printf("normalised frequency\n")

printf("V=%.2f ",V)

M=(V^2)/2

printf("\ntotal no. of guided mode\n")

printf("M=%.2f",M)