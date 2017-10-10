


//

L=30
t0=20
p0=10
pm=15
tm=32
a=0.03
al=11/(1000000)
E=2.1*(1000000)
w=0.693
ml=780
n=1
printf("\n  for n=1')
ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.3f meters',ct)

cp=(pm-p0)*L/(a*E)
printf("\n the pull correction is  %0.3f  meters',cp)

cs=-L*w*w/(24*pm*pm*n*n)
printf("\n the sag correction is   %0.3f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.3f meters',e)

l1=L+e

truelength=(l1/L)*ml
printf("\n the true length  is  %0.3f ",truelength)

n=2

printf("\n  for n=2')
ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.3f meters',ct)

cp=(pm-p0)*L/(a*E)
printf("\n the pull correction is  %0.3f  meters',cp)

cs=-L*w*w/(24*pm*pm*n*n)
printf("\n the sag correction is   %0.3f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.3f meters',e)

l1=L+e

truelength=(l1/L)*ml
printf("\n the true length  is  %0.3f  meters",truelength)
