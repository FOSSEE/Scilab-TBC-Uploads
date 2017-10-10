
//ch-1  page -39,40  pb-4

//

//

a=28.7
b=23.4
c=20.9
d=29.6

ag=5
bg=7
cg=10
dg=12

AB=a*(cos(ag*(%pi/180)))

BC=b*(cos(bg*(%pi/180)))

CD=c*(cos(cg*(%pi/180)))

DE=d*(cos(dg*(%pi/180)))

total=AB+BC+CD+DE

ml=total

printf("\n measured length is  %0.3f meters',ml)

l=30
e=0.025
l1=l-e

tl=(l1/l)*ml

printf("\n true horizontal distance is  %0.3f meters',tl)
