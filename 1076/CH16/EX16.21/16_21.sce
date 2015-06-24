clear
clc

r1=.08
r2=.1
r3=.12
r4=.14
r5=.09
r6=.16

I1=20
I2=50
I3=25
I4=40
I5=30

x=((r2*I1)+(r3*(I1+I2))+(r4*(I1+I2+I3))+(r5*(I1+I2+I3+I4))+(r6*(I1+I2+I3+I4+I5)))/(r1+r2+r3+r4+r5+r6)

iab=x
ibc=iab-I1
icd=ibc-I2
ide=icd-I3
ief=ide-I4
ifa=ief-I5

iab=round(iab*10)/10
ibc=round(ibc*10)/10
icd=round(icd*10)/10
ide=round(ide*10)/10
ief=round(ief*10)/10
ifa=round(ifa*10)/10


mprintf("\n(a) Current A to B in Ampere = %.1f", iab)
mprintf("\n Current B to C in Ampere = %.1f", ibc)
mprintf("\n Current C to D in Ampere = %.1f", icd)
mprintf("\n Current D to E in Ampere = %.1f", ide)
mprintf("\n Current E to F in Ampere = %.1f", ief)
mprintf("\n Current F to A in Ampere = %.1f", ifa)



Vb=230+((r6*ifa)+(r5*ief)+(r4*ide))
mprintf("\n Minimum voltage at B, in Volts = %.3f\n\n", Vb)

//(b)
r7=.1


B=[
(r4+r5+r6) -r7
(r1+r2+r3) (r7+r1+r3+r2)
]

C=[
((r5*I5)+(r4*(I5+I4)))
((r2*(I5+I2+I3+I4))+(r1*(I1+I2+I3+I4+I5))+(r3*(I1+I2+I3)))
]

A= inv(B)*C
x=A(1)
y=A(2)
iab=I1+I2+I3+I4+I5 - x-y
ibc=iab-I1
icd=ibc-I2
iaf=x
ife=iaf-I5
ied=ife-I4
iad=y

mprintf("\n(b) Current A to B in Ampere = %.1f", iab)
mprintf("\n Current B to C in Ampere = %.1f", ibc)
mprintf("\n Current C to D in Ampere = %.1f", icd)
mprintf("\n Current E to D in Ampere = %.1f", ied)
mprintf("\n Current F to E in Ampere = %.1f", ife)
mprintf("\n Current A to F in Ampere = %.1f", iaf)
mprintf("\n Current A to D in Ampere = %.1f", iad)

Ve=230-((r6*iaf)+(r5*ife))
mprintf("\n Minimum voltage at E, in Volts = %.3f", Ve)

