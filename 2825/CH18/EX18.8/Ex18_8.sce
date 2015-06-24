//Ex18_8 Pg-947
clc

L=100*10^(-6) //length of semiconductor in m
A=10^(-7) //area of semiconductor in cm^2
V=10 //applied voltage in V
mew_n=1350 //mobility of electrons 
mew_p=480 //mobiltiy of protons
tp=10^(-6) //lifetime of protons in sec

tn=L/(mew_n*V) //lifetime of electrons in sec

Gain=tp/tn*(1+(mew_p/mew_n)) //gain of photoconductor
printf("Gain  = %.2f*1e2",Gain*1e-2)
