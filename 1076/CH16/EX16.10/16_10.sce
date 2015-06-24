clear
clc

I=200

r1=.05
r2=.06
r3=.02
r4=.04
r5=.03
r6=.01
ra=.02
rb=.03

I1=100
I3=30
I4=50
I5=20
//(a)
dv=0
A=[
(ra) (-rb) (r6+r5 +r4+r3)
1 1 0
(ra+r1+r2) (-rb) -(r1+r2)
]

B=[
dv+ (r5*(I5) +r4*(I5+I4)+r3*(I5+I4+I3))
I
dv+(r2*I1)
]
i=inv(A)*B

mprintf("\n(a) Ia = %.0f A, Ib= %.0f A", i(1), i(2))

//(b)
dv=-5
A=[
(ra) (-rb) (r6+r5 +r4+r3)
1 1 0
(ra+r1+r2) (-rb) -(r1+r2)
]

B=[
dv+(r5*(I5) +r4*(I5+I4)+r3*(I5+I4+I3))
I
dv+(r2*I1)
]
i=inv(A)*B

mprintf("\n(b) Ia = %d A, Ib= %d A", i(1), i(2))

