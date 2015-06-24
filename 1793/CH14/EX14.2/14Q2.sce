clc
G=16
H=7
c=30
Ta=0.65*G*H*(tand(45-c/2))^2
A=Ta*3*3/4
B1=Ta*3-54.61
C=Ta*4*4/4
B2=Ta*4-97.08
s=2
As=A*s
Bs=(B1+B2)*s
Cs=C*s
printf( 'The strut loads at level A = %f kN\n',As)
printf( ' The strut loads at level B = %f kN\n',Bs)
printf( ' The strut loads at level C = %f kN',Cs)
