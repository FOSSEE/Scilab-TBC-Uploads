


clear
//

L=30//cm2
t0=20//kg/cm2
p0=5//per degree C
tm=25//kg/cm2
a=0.02//cm2
al=11/(1000000)//per degree C
E=2.1*(1000000)//Youngs modulus
w1=22//g/m
w=0.66//kg
n=1

p=5//kg
printf("\n for p=5 case')

ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.5f meters',ct)

cp=(p-p0)*L/(a*E)
printf("\n the pull correction is  %0.5f  meters',cp)

cs=-L*w*w/(24*p*p*n*n)
printf("\n the sag correction is   %0.5f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.5f meters',e)

hd=L+e

printf("\n the horizontal distance  is  %0.5f meters",hd)

p=11
printf("\n for p=11 case')

ct=al*L*(tm-t0)
printf("\n the temperature correction is %0.5f meters',ct)

cp=(p-p0)*L/(a*E)
printf("\n the pull correction is  %0.5f  meters',cp)

cs=-L*w*w/(24*p*p*n*n)
printf("\n the sag correction is   %0.5f meters',cs)

e=ct+cp+cs
printf("\n the total correction is  %0.5f meters',e)

hd=L+e

printf("\n the horizontal distance  is  %0.5f meters",hd)
