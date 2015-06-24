clear
clc

clear
clc

Z=[.2 .2 .05]' * %i
S=30
V=11
I=round(S*1e8/(sqrt(3)*V*1e3) )/1e2
E=1

Ia1=E/(Z(1)+(Z(2)*Z(3)/(Z(2)+Z(3))))
Ia1=round(Ia1*1000)/1000
Ia2=-Ia1 * Z(3)/(Z(2)+Z(3))
Ia0=-Ia1 * Z(2)/(Z(2)+Z(3))

a=exp(%i * 2 * %pi/3)
A=[1 1 1 
1 a^2 a
1 a a^2
]

Ia=A*[ Ia0 Ia1 Ia2]' * I

mprintf("Line currents: ")
mprintf("\nIa= %.2f ang(0) A",abs(Ia(1)))
mprintf("\nIb= %.2f ang(%.2f) A",abs(Ia(2)),atand(imag(Ia(2))/real(Ia(2)))+180)
mprintf("\nIc= %.2f ang(%.2f) A",abs(Ia(3)),atand(imag(Ia(3))/real(Ia(3))))


If=Ia(2)+Ia(3)
mprintf("\nFault current= %.0f ang(%.2f) A",abs(If),atand(imag(If)/real(If)))

Va1=1-(Ia1*Z(1))
Va2=Va1
Va0=Va1

Va=A*[Va0 Va1 Va2]' * V/sqrt(3)
mprintf("\nLine to neutral voltages: ")
mprintf("\nVa= %.3f ang(%.2f) kV",abs(Va(1)),atand(imag(Va(1))/real(Va(1))))
mprintf("\nVb= %.3f KV",abs(Va(2)))
mprintf("\nVc= %.3f KV",abs(Va(3)))


