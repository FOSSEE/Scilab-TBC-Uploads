L=0.2
R=50+30

iL_0m=100/50
iL_0p=iL_0m
iL_inf=0
T=L/R

t=10/1000
iL_10=iL_0p*exp(-t/T)
disp(iL_10)

t1=-T*log(0.5*iL_0p/(iL_0p))
disp(t1)