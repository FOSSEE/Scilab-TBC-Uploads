//dsing sleeve and cotter joint
clc
//solution
//given
P=60*10^3//N
ft=60//N/mm^2
t=70//N/mm^2
fc=125//N/mm^2
pi=3.14
//let d be diameter of rods
//P=A*ft
//P=(p1/4)*d^2*ft
printf("the dia of cotter jont is,%f mm\n",sqrt((P*4)/(pi*ft)))
printf("the standard dia of cotter jont is d=26mm\n")
d=36//mm
//let d2 be dia of spigot and t11 be thickness
//t11=d2/4
//P=[{(pi/4)*d2^2}-(d2*t)]*ft=32.13*d2^2
//d2=sqrt(P/32.13)//mm
//t11=d2/4//mm
printf("the dia d2 is,%f mm\n",sqrt(P/32.13))//mm)
printf("the dia d2 is 44mm\n")
d2=44//mm
printf("the thickness is ,%f mm\n",d2/4)
printf("the thckness is,11mm\n")
t11=11//mm
//let fc1 be induced crushing stress
//fc1=P/(d2*t11)//N/mm^2
printf("the value of d2 is,%f mm\n",d2)
printf("the induced crushing stress is,%f N/mm^2\n ",P/(d2*t11))
printf("the induced crushing stress is say 124 N/mm^2 whihc is less then 125,hence d2 and t11 is correct\n")
//let b be width of cotter
//P=2*b*t11*t=(2*11*70)*b
//b=P/(2*11*70)//mm
printf("the width of cotter is,%f mm\n ",P/(2*11*70))
printf("the width of cotter is say 40mm\n")
//let a be distance from end of slot to end of the rod
//P=2*a*d21*t
//a=P/(2*d2*t)//mm
printf("distance from end of slot to end of the rod is,%f mm\n",P/(2*d2*t))
printf("distance from end of slot to end of the rod is say 10mm")
//let c be distance of rod end from its end to cottre hole
//P=2*(d1-d2)*c*t=2240*c
c=P/(2240)//mm
printf("istance of rod end from its end to cottre hole is,%f mm",c)

