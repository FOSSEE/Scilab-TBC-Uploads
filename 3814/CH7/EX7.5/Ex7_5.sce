// determine blade inlet angle and eulers head
// ex 7.5 pgno.175
clc
h=35 //meter
D=2 //m
N=145 //rev/min
alpa1=30// degree
g=9.8 //
b1=28// degree
H=32.6// 0.93*35 head
V1=sqrt(2*g*H) // inlet velocity
mprintf('\n inlet velocity V1 = %f m/s',V1)
u=(%pi*D*N)/60 // 
mprintf('\n u = %f m/s',u)
Vr1=sqrt(V1^2+u^2-(2*u*V1*cosd(alpa1))) // inlet triangle of velocity
mprintf('\n Vr1 = %f m/s',Vr1)
v=(-u^2+Vr1^2+V1^2)
v1=2*Vr1*V1
V=v/v1
s=acosd(V)
B1=(180-s) // Beta
mprintf('\n Beta B1 = %f degree',B1)
Vlw=V1*cosd(alpa1)
mprintf('\n Vlw =% f m/s',Vlw)
E=(u*Vlw)/g // eulers head
mprintf('\n E =%f m',E)
