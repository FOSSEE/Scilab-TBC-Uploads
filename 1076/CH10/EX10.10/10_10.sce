clear
clc

Z=[.2 .2 .05]' * %i
S=30
V=11
I=S*1e6/(sqrt(3)*V*1e3)
E=1

Ia1=E/(Z(1)+Z(2)+Z(3))
If= 3*abs(Ia1) * S*1e6/(sqrt(3)* V*1e3)
Ia2=Ia1
Ia0=Ia1

a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

Va1=E-Ia1*Z(1)
Va2=0-Ia2*Z(2)
Va0=0-Ia0*Z(3)

Vp=[ Va0 Va1 Va2]'
v=A*Vp

vab=v(1)-v(2)
vbc=v(2)-v(3)
vca=v(3)-v(1)

Vbll=V/sqrt(3)

Vab=vab * Vbll
Vbc=vbc * Vbll
Vca=vca * Vbll
Vll=[Vab Vbc Vca]
mprintf("\n(a)\n line currents: If= %f A, Line voltages in KV ", If)
mprintf("\nVab= %s", string(round(abs(Vll(1))*10)/10) +'/_'+ string(round(atand(imag(Vll(1))/real(Vll(1)))*10)/10) )
mprintf("\nVbc= %s", string(round(abs(Vll(2))*10)/10) +'/_'+ string(round(atand(imag(Vll(2))/real(Vll(2)))*10)/10 +180) )
mprintf("\nVca= %s", string(round(abs(Vll(3))*10)/10) +'/_'+ string(round(atand(imag(Vll(3))/real(Vll(3)))*10)/10 +180))



If3=E/Z(1)
if3=abs(If3)*  S*1e6/(sqrt(3)* V*1e3)

mprintf("\n(b)3 phase fault current is  -%.0fi A", if3)
