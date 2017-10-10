


clear
//

L=20//cm2
t0=20//kg/cm2
p0=5//per degree C
pm=16//kg
tm=32//degree C
a=0.03//cm2
al=11/(1000000)//per degree C
E=2.1*(1000000)//cm2
w=0.6//kg
ml=680//m
n=1


ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.5f meters',ct)

cp=(pm-p0)*L/(a*E)
printf("\n the pull correction is  %0.5f  meters',cp)

cs=-L*w*w/(24*pm*pm*n*n)
printf("\n the sag correction is   %0.5f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.5f meters',e)

l1=L+e

truelength=(l1/L)*ml
printf("\n the true length  is  %0.5f meters ",truelength)
