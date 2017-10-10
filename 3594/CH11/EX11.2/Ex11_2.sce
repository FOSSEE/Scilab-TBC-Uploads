
clc
//given
v=15//ft/min
d=2//ft
N=450//rpm
N1=d*v/(2*%pi)//rpm of barrel
s=N/N1//total reduction speed required
//With a minimum number of teeth = 20
T=20
T1=T*(s)^(1/3)
R=(T1/T)^3
printf("\nIf the minimum number of teeth is fixed at 20, the might be as follow ( %.f / 20 )^3 = %.1f\nThis is sufficiently close to the required ratio\n",T1,R)
