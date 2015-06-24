clear
clc

Z=[.2 .2 .05]' * %i
S=30
V=11
I=S*1e6/(sqrt(3)*V*1e3)
E=1

Ia1=E/(Z(1)+Z(2))
Ia2=-Ia1
Ia0=0
Ibase=S*1e6/(sqrt(3)* V*1e3)

Ia=0
Ib=sqrt(3)*Ia1*Ibase
Ic=-Ib

mprintf("\nLine currents: (Ia Ib Ic) in Ampere")
mprintf("\nIa= %d", Ia)
mprintf("\nIb= -%d",abs(Ib))
mprintf("\nIc= %d", abs(Ic))

a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

Va1=E-Ia1*Z(1)
Va2=0-Ia2*Z(2)
Va0=0-Ia0*Z(3)

Vbll=V/sqrt(3)
Vp=[ Va0 Va1 Va2]'
v=A*Vp*Vbll

mprintf("\nline to neutral voltages in KV  ")
mprintf("\nVa= %s", string(round(abs(v(1))*1000)/1000) +'/_'+ string(round(atand(imag(v(1))/real(v(1)))*10)/10) )
mprintf("\nVb= %s", string(round(abs(v(2))*1000)/1000) +'/_'+ string(round(atand(imag(v(2))/real(v(2)))*10)/10 +180) )
mprintf("\nVc= %s", string(round(abs(v(3))*1000)/1000) +'/_'+ string(round(atand(imag(v(3))/real(v(3)))*10)/10 +180))
