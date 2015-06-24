clear
clc

Vt=10.95
V=11
S=100
I=round(S*1e7/(sqrt(3)*V*1e3))/10    //Error in evaluation of base current in textbook

vt=Vt/V
pf=.8
P=40

Il=round(P*1e7/(sqrt(3)*Vt*pf*1e3))/10
Il=Il * exp (%i * acos(pf))/I

x1g=.2
x2g=.2
x0g=.05

Sm=50
x1m=.2 * S/Sm
x2m=.2 * S/Sm
x0m=.05

xt1=.05
xt2=.05
xt0=.15


V=vt+ (Il * %i * x0m)
x0m=.05* S/Sm
Ia1=V/(%i*((x1g*(x1m+xt1)/(x1g+x1m+xt1))+(x2g*(x2m+xt2)/(x2g+x2m+xt2))+(x0g*(x0m+xt0)/(x0g+x0m+xt0))))
Ia1=round(Ia1 * 1000)/1000
Ig1=round((Ia1 * (x1m + xt1)/(x1m+x1g+xt1) + Il)*1000)/1000
Im1=round((Ia1 * (x1g)/(x1m+x1g+xt1) - Il)*1000)/1000
Ig2=round((Ia1 * (x2m + xt2)/(x2m+x2g+xt2))*1000)/1000
Im2=round((Ia1 * (x2g)/(x2m+x2g+xt2))*1000)/1000
Ig0=round((Ia1 * (x0m + xt0)/(x0m+x0g+xt0))*100)/100
Im0=round((Ia1 * (x0g)/(x0m+x0g+xt0))*100)/100

Im=round((Im1+Im2+Im0)*1000)  *1e-3
Ig=round((Ig1+Ig2+Ig0)*1000)  *1e-3

mprintf("\nCurrent Through motor = %.2f, ang (%.1f) deg", abs(Im)*I, atand(imag(Im)/real(Im))+180)
mprintf("\nCurrent Through generator = %.2f, ang (%.1f) deg", abs(Ig)*I, atand(imag(Ig)/real(Ig)))
disp("Error in evaluation of base current in textbook")
