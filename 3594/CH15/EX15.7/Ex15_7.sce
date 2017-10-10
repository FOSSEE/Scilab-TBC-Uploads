//to find the fraction of the applied force transmitted at 1200 rpm and the amplitude of forced vibrations of the machines at resonance
clc
//given
e=1/30
n=1200//rpm
w=%pi*n/30
m=3//lb
g=32.2//ft/s^2
stroke=3.5//in
r=stroke/2
k=(1+1/e)^(1/2)//nf/n=k
d=(k/187.7)^2
W=200//lb ; given
s=W/d//combined stiffness
p=1/14.1//As a^2/b=1/198
T=((1+p^2*k^2/((1-k^2)^2+p^2*k^2)))^(1/2)//actual value of transmissibility
F=(m/g)*w^2*r/12//maximum unbalanced force transmitted on the machine
Fmax=F*T//maximum force transmitted to the foundation
//case b
E=((1+p^2)/(p^2))^(1/2)
Nreso=215.5//rpm
Fub=F*(Nreso/n)^2
Ftmax=E*Fub
D=E//dynamic magnifier
del=Fub/152//static deflection
A=del*D
printf("\na) Maximum force transmitted at 1200 rpm = %.f lb\nb) The amplitude of the forced vibrations of the machine at resonance = %.3f in\n   Force transmitted = %.f lb\n",Fmax,A,Fub)
