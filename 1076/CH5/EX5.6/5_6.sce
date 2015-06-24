clear
clc

safety=2
d=1.95e-2
A=2.25e-4
E=91.4 *1e9
alpha=18.44 *1e-6
Temp21=10
Temp22=40 
Tmax=77900
w=8.31
span=250


Fw=378 * d
Fw=round(Fw*100)/100
Ft1=sqrt(w^2 + Fw^2)
T1=Tmax/safety
Ft2=w


c_1=1
c_2=T1 -(alpha * A * E * (Temp22-Temp21)) - A*E*Ft1^2 * span^2 /(24*T1^2)
c_3=0
c_4=A*E*Ft2^2 * span^2 /24
pol=poly([-c_4 -c_3 -c_2 c_1], "xx", "c")
T2s=roots(pol)

T2=T2s(1)
T2=round(T2)
Sag1= w * span *span / (8 * T2)

//difference in results is seen as the author has used hit and trial aproach to solve T2, while the program uses iterative method to solve equations. The equations have the same coefficients
mprintf("sag at erection= %.2f m", Sag1)

disp("difference in results is seen as the author has used hit and trial aproach to solve T2, while the program usesiterative method to solve equations. The equations have the same coefficients")
