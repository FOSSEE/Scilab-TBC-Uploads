
clear
L=28
t0=20
p0=10
pm=5
tm=40
a=0.02
al=11/(1000000)
E=2.1*(1000000)
w1=470
ml=680
n=1

w=(470*28)/30
w=w/1000

ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.3f meters',ct)

cp=(pm-p0)*L/(a*E)
printf("\n the pull correction is  %0.3f  meters',cp)

cs=-L*w*w/(24*pm*pm*n*n)
printf("\n the sag correction is   %0.3f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.3f meters',e)

l1=L+e

dis=(l1/L)*ml
printf("\n the correctt distance  is  %0.3f ",dis)
