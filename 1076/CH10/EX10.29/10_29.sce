clear
clc

a=exp(%i * 2*%pi/3)

V=33
S=45
SF=2000
V2=132
Z=V2*V2/S
I=S*1e6 /(sqrt(3) * V2 * 1e3)

X1=.4* 60
X2=.4* 60
X0=1 * 60

x1=X1/Z
x2=X2/Z
x0=X0/Z

xg=.0225
xt=.1

xf1=x1/2 + xg + xt
xf2=x2/2 + xg + xt
xf0=(x0/2 + xt)/2
xf=xf1+xf2+xf0
ia1=round(1000/xf)/1000
iF1=3*ia1
IF1=iF1*I
mprintf("\n(a)Fault Current = %.2fA",IF1)

IA1=ia1*-1*%i
IA2=ia1*-1*%i
IA0= ia1 * .5*-1*%i

IA=round((IA1 +IA2 +IA0)*10000)/10000
IB=round(((IA1*a*a) + (a*IA2) +IA0)*10000)/10000
IC=round(((IA1*a) + (a*a*IA2) +IA0)*10000)/10000
mprintf("\n(b)From T1 to P: (in order - IA,IB, IC in pu)")
disp(IC, IB, IA)

IA1b=0
IA2b=0
IA0b=ia1 * .5*-1*%i
IAb=round((IA1b +IA2b +IA0b)*10000)/10000
IBb=round(((IA1b*a*a) + (a*IA2b) +IA0b)*10000)/10000
ICb=round(((IA1b*a) + (a*a*IA2b) +IA0b)*10000)/10000
mprintf("\nFrom P to T2: (in order - IA,IB, IC in pu)")
disp(ICb, IBb, IAb)



//(c)


Ia0=0
Ia1=IA1 * exp(%i * -1*%pi/6)
Ia2=IA2 * exp(%i * 1*%pi/6)

Ia=round((Ia1 +Ia2 +Ia0)*1000)/1000
Ib=round(((Ia1*a*a) + (a*Ia2) +Ia0)*1000)/1000
Ic=round(((Ia1*a) + (a*a*Ia2) +Ia0)*1000)/1000
mprintf("\n(c) Currents in lines connecting source to T1 (in order - Ia,Ib, Ic in pu)")
disp(Ic, Ib, Ia)


mprintf("\n(d) Currents in star wdg of T1")
mprintf("\nIa= %.4fj, Ib= %.4fj, Ic= %.4fj", imag(IA), imag(IB), imag(IC))
mprintf("\nIa1= %.4fj, Ia2= %.4fj, Ia0= %.4fj", imag(IA1), imag(IA2), imag(IA0))
mprintf("\nIb1= %.4f /_%.3f, Ib2=%.4f/_%.3f, Ib0= %.4fj", abs(IA1 *a*a),atand(imag(IA1*a*a)/real(IA1*a*a))+180,abs(IA1 *a),atand(imag(IA2*a)/real(IA2*a)),imag(IA0))
mprintf("\nIc1= %.4f /_%.3f, Ic2=%.4f/_%.3f, Ic0= %.4fj", abs(IA1 *a),atand(imag(IA1*a)/real(IA1*a)),abs(IA1 *a*a),atand(imag(IA2*a*a)/real(IA2*a*a))+180,imag(IA0))


Iab1 =  round(IA1*1e3 /sqrt(3))/1e3
Iab2 =  round(IA2*1e3 /sqrt(3))/1e3
Iab0 =  round(IA0*1e3 /sqrt(3))/1e3

Ibc1=Iab1 * a*a
Ibc2=Iab2 * a
Ibc0=Iab0

Ica1=Iab1 * a
Ica2=Iab2 * a *a
Ica0=Iab0

Iab= Iab1 +Iab2 +Iab0
Ibc= Ibc1 +Ibc2 +Ibc0
Ica= Ica1 +Ica2 +Ica0

mprintf("\n\nCurrents in delta wdg of T1")
mprintf("\nIab= %.4fj, Ibc= %.4fj, Ica= %.4fj", imag(Iab), imag(Ibc), imag(Ica))
mprintf("\nIab1= %.4fj, Iab2= %.4fj, Iab0= %.4fj", imag(Iab1), imag(Iab2), imag(Iab0))
mprintf("\nIbc1= %.4f /_%.3f, Ibc2=%.4f/_%.3f, Ibc0= %.4fj", abs(Ibc1),atand(imag(Ibc1)/real(Ibc1))+180,abs(Ibc2),atand(imag(Ibc2)/real(Ibc2)),imag(Ibc0))
mprintf("\nIca1= %.4f /_%.3f, Ica2=%.4f/_%.3f, Ica0= %.4fj", abs(Ica1),atand(imag(Ica1)/real(Ica1)),abs(Ica2),atand(imag(Ica2)/real(Ica2))+180,imag(Ica0))

mprintf("\n\n Currents in star wdg of T2")
mprintf("\nIa= %.4fj, Ib= %.4fj, Ic= %.4fj", imag(IAb), imag(IBb), imag(ICb))
mprintf("\nIa1= %.4f, Ia2= %.4f, Ia0= %.4fj", imag(IA1b), imag(IA2b), imag(IA0b))
mprintf("\nIb1= %.4f, Ib2= %.4f, Ib0= %.4fj", imag(IA1b *a*a), imag(IA1b *a),imag(IA0b))
mprintf("\nIc1= %.4f, Ic2= %.4f, Ic0= %.4fj", imag(IA1b   *a), imag(IA1b*a *a),imag(IA0b))


Iab1b =  round(IA1b*1e3 /sqrt(3))/1e3
Iab2b =  round(IA2b*1e3 /sqrt(3))/1e3
Iab0b =  round(IA0b*1e3 /sqrt(3))/1e3

Ibc1b=Iab1b * a*a
Ibc2b=Iab2b * a
Ibc0b=Iab0b

Ica1b=Iab1b * a
Ica2b=Iab2b * a *a
Ica0b=Iab0b

Iabb= Iab1b +Iab2b +Iab0b
Ibcb= Ibc1b +Ibc2b +Ibc0b
Icab= Ica1b +Ica2b +Ica0b

mprintf("\n\nCurrents in delta wdg of T2")
mprintf("\nIab= %.3fj, Ibc= %.3fj, Ica= %.3fj", imag(Iabb), imag(Ibcb), imag(Icab))
mprintf("\nIab1= %.3f, Iab2=%.3f, Iab0= %.3fj", imag(Iab1b), imag(Iab2b), imag(Iab0b))
mprintf("\nIbc1= %.3f, Ibc2=%.3f, Ibc0= %.3fj", imag(Ibc1b),imag(Ibc2b),imag(Ibc0b))
mprintf("\nIca1= %.3f, Ica2=%.3f, Ica0= %.3fj", imag(Ica1b),imag(Ica2b),imag(Ica0b))




