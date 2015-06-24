clear
clc

Sg1=100
Vg1=11
xg1=.15 *%i

Sg2=50
Vg2=11
xg2=.1 *%i

St1=100
Vt1a=11
Vt1b=132
xt1=.1 *%i
nt1=Vt1b/Vt1a

St2=50
Vt2a=11
Vt2b=132
xt2=.08 *%i
nt2=Vt2b/Vt2a

Sb=100
Vb1=11
Vb2=nt1*Vb1

xl=.2 * 200 *%i
Xl=xl/(Vb2*Vb2/Sb)

Xg2=xg2*Sb/Sg2
Xt2=xt2 * Sb/St2

X=( ((xg1 +xt1) * (Xg2 +Xt2) )/ ((xg1 +xt1) + (Xg2 +Xt2) )) +Xl/2

I=1/X

Ib1=Sb*1e3/(Vb1*sqrt(3))
Ib2=Sb*1e3/(Vb2*sqrt(3))
If=abs(I*Ib2)
Ifg=abs(I*Ib1)
Ifg1=Ifg * (Xg2 +Xt2)/(xg1+xt1+Xt2+Xg2)
Ifg2=Ifg * (xg1 +xt1)/(xg1+xt1+Xt2+Xg2)
MVAf=abs(I*1*Sb)

mprintf("Total fault current = %.2f A, Fault Level= %f MVA,\n Fault current supplied by generator 1=%f A, generator 2=%f A",If, MVAf, Ifg1, Ifg2)
