L=4/1000
R=1000
V=9

iL_0m=V/(2*R)
iL_0p=iL_0m
iL_inf=0
isw_inf=V/R
T=L/R

t=5E-6

iL_5=iL_0p*exp(-t/T)
disp(iL_5)

isw_5=isw_inf*(1-exp(-t/T))
disp(isw_5)