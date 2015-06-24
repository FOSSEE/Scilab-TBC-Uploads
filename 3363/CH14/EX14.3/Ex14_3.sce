//Example 14.3, Page 514
clc
u=9.3*10^-24//in Tesla
B=1//in Tesla
Eb=u*B*6.24150934*10^18 
T=300//in K
k=8.6*10^-5//ev/k
x=k*T
s=(Eb/x)*100
disp('Part a')
printf("\n The percentage is  %f",s)
disp('Part b')
n=2.0*10^28///m3
k=1.38*10^-23//in J/k
uo=4*%pi*10^-7//T-m/amp
con=(uo*n*u*u)/(k*T)
printf("\n The number of unpaired electrons is  %e",con)