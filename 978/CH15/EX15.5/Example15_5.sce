//chapter-15,Example15_5,pg 513

//(delphi/delT)=(2pi/lam)(n*(delL/delT)+L*(deln/delT))=(deln/delT)

lam=635*10^-9//wavelength of light beam

delphi=139//phase angle

delL=0.49*10^-6//change in length

n=1.48//R.I of fibre

k=((lam*delphi)/(2*%pi))-(delL*n)//k=(deln/delT), rate of change of R.I w.r.t T

printf("rate of change of R.I w.r.t T\n")

printf("k=%.8f/C",k)