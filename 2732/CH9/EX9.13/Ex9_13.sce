clc
//initializatio of variables
clear
// linked to 9.13
b=10 //cm
h=10 //cm
P=5 //tonne
e=1 //cm
E=12*10^4 //kg/cm^2
str=130 // kg/cm^2
n=3
L=2 //m
// calculations
L=L*100 //cm
Pcr=%pi^2*E*b*h^3/(12*L^2)
Pcr=Pcr/1000
Smax=-P*1000/(b*h)-(P*1000*1*5*12/10^4)*1/(1-(n*P/Pcr))
Smax=abs(Smax)

rr=b*h^3/(12*100)
Smax_se=P*1000/(b*h)*(1+e*5/rr*sec(%pi/2*sqrt(n*P/Pcr)))
Perror=(Smax-Smax_se)/Smax
Perror=Perror*100
Perror=abs(Perror)
// results
printf('Using secent formula, stress obtained is %d kg/cm^2',Smax_se)
printf('\n hence, the percentage error %.2f',Perror)
// approximate answees in the text
