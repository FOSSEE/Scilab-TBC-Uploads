clear
clc

S=25
pf=.8
P=15
Vt=10.6
V1=11
V2=11 * 66/11
I1=S*1e6/(sqrt(3)*V1*1e3)
I2=S*1e6/(sqrt(3)*V2*1e3)
Il=(P*1e6/(sqrt(3)*Vt*1e3*pf)) * exp (%i * acos(pf))
vt=Vt/V1
Z=V2*V2/S
XL=10
xl=XL/Z
xt=.1
xg=.15
xm=.15

Xth=xm * (xg+xt+xt+xl)/(xm + xg+xt+xt+xl)
IF=vt/Xth
If=IF*I2

Ifg=IF*I1 *%i*-1* xm /(xm + xg+xt+xt+xl)
ifg=abs(Ifg + Il)
Ifm=IF*I1 *%i *-1* (xg+xt+xt+xl)/(xg+xt+xt+xl+xm)
ifm=abs(Ifm - Il)

mprintf("total fault current = %.0f A, current through generator=%.0f A, current through motor=%.0f A\n",If, ifg, ifm)
//error in calculation of Ifm-I =-.623 - 6.891j instead of -.623-j5.96
disp("error in calculation of Ifm-I =-.623 - 6.891j->(correct) instead of -.623-j5.96 -> incorrect")
