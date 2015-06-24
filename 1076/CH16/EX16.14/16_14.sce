clear
clc


r1=.03
r2=.02
r3=.03
r4=.04
r5=.04
r6=.01
r7=.02

I1=20
I2=30
I3=25
I4=30
I5=125
I6=20

dv=0
A=[
(r5+r1+r4+r3+r2) (r3+r2)
(r3+r2) (r3+r2+r6+r7)
]


B=[
((r4*I5)+(r3*(I5-I4))+ (r2*(I5-I4-I3)) + (r1*I1))
((r3*(I5-I4))+ (r2*(I5-I4-I3))+(r7*I6))
]
i=inv(A)*B
x=i(1)
y=i(2)

mprintf("\nEA = %.2f A, AB= %.2f A, ED= %.2f A, DF= %.2f A, DC= %.2f A, BC= %.2f A, FB= %.2f A", x,x-I1, I5-x,y, I5-I4-x-y, I5-I4-I3-x-y, y-I6)
