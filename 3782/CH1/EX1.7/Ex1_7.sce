


clear
//

L=20//m
t0=20//degree C
p0=15//kg
p=10//kg
tm=30//degree C
a=0.02//cm2
al=11/(1000000)//per degree C
E=2.1*(1000000)//kg/cm2
w=0.4//kg

n=1
ct=al*L*(tm-t0)//temperature correction
printf("\n the temperature correction is %0.5f meters',ct)

cp=(p-p0)*L/(a*E)//pull correction
printf("\n the pull correction is  %0.5f  meters',cp)

cs=-L*w*w/(24*p*p*n*n)//sag correction
printf("\n the sag correction is   %0.5f meters',cs)

e=ct+cp+cs//total correction
printf("\n the total correction is  %0.5f meters',e)

hd=L+e//horizontal distance

printf("\n the horizontal distance  is  %0.5f meters",hd)
