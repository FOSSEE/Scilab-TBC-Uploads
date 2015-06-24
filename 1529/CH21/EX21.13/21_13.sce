//Chapter 21, Problem 13, Figure 21.5
clc
n1=2000                         //no of turns on primary
n2=800                          //no of turns on secondary
i2=100                          //secondary current in amperes
i1=44                           //current in amperes from phasor diagram
i0=5                            //no load current
i3=40                           //current from phaor diagram
pf0=0.2                         //power factor
a1=37
pf2=0.85
i1=i2*n2/n1
a2=acosd(pf2)
a0=acosd(pf0)
Icos=(i0*pf0)+(i3*pf2)
Isin=(i0*sin(a0*%pi/180))+(i3*sin(a2*%pi/180))
I1=sqrt(Isin^2+Icos^2)
ta=atand(Isin/Icos)
pf=cos(ta*%pi/180)
printf("I1 = %.3f A\n\n Power factor = %.3f degree\n\n",I1,pf)
