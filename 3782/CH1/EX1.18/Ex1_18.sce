
//ch-1  page -37,38  pb-1

//

//


a=17.5
b=19.3
c=17.8
d=13.6
e=12.9

da=2.35
db=4.20
dc=2.95
dd=1.65
de=3.25

AB=sqrt((a*a)-(da*da))
BC=sqrt((b*b)-(db*db))
CD=sqrt((c*c)-(dc*dc))
DE=sqrt((d*d)-(dd*dd))
EF=sqrt((e*e)-(de*de))

total=AB+BC+CD+DE+EF
printf("\n measured length is  %0.3f meters',total)

e=0.025
l=20
l1=l-e
ml=total

tl=(l1/l)*ml

printf("\n true length is  %0.3f meters',tl)
