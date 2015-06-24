clear
clc

T=[10 132 6.6 .15]
M=[5 6.6 .3 .2 ]
B=[10 6.6]
T(5)= T(3)/T(2)
B(3)=B(2)* T(5)
B(4)= B(1)*1e6/(sqrt(3)*B(2)*1e3)
M(5)=M(4) *B(1)/M(1)
M(6)=M(3) *B(1)/M(1)

X1=1/((1/M(5))+(1/M(5))+(1/T(4)))
IF1=round(100/X1)/100
I1=IF1*B(4)
mprintf("\n(a) sub transient fault current=%.0f A", I1)

It=round(100/T(4))/100
Im=1/M(5)
ID=It+Im
iD=ID*B(4)
mprintf("\n(b) current through D=%.0f A", iD)

RD=iD*1.6
mprintf("\n(c) current rating of  D=%.0f A", RD)

X2=1/((1/M(6))+(1/T(4)))
IF2=round(100/X2)/100
I2=IF2*round(B(4)*10)/10
iCB=1.1 *I2
mprintf("\n(d) current to be interrrupted by D=%.1f A", fix(iCB*10)/10)

