//desing joint
clc
//solution
//given
P=50*10^3//N
d=75//mm
ft=25//N/mm^2
t=20//N/mm^2
//let B1 be the width of strap
//B1=d
B1=75//mm
//t11=B1/4//mm
printf("the thickness is,%f mm\n",B1/4)
printf("the thickness can be taken as 20mm\n ")
t11=20//mm
//let t1 be thickness of strap at thnner side
//P=2*B1*t1*ft//N
//t1=P/(2*B1*ft)//mm
printf("the thickness of strap at thinner side is,%f mm\n ",P/(2*B1*ft))
printf("the thickness can be takn as 15 mm\n")
t1=15//mm
//let t3 be thickness of strap at cotter
//2*t3*(B1-t)=2*t1*B1
//t3=(2*t1*B1)/(2*(B1-t))//mm
printf("thickness of strap at cotter is,%f mm\n",(2*t1*B1)/(2*(B1-t)))
printf("thickness of strap at cotter  say 21mm\n")
t3=21//mm
//let B be total width of gib and cotter
//P=2*B*t11*t
//B=P/(2*t11*t)//mm
printf("the total width of gib and cotter is,%f mm\n ",P/(2*t11*t))
printf("the total width of gib and cotter is say 65mm")

