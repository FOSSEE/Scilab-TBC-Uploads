//desing cotter joint
clc
//solution
//given
P=30*10^3//N
ft=50//N/mm^2
t=35//N/mm^2
fc=90//N/mm^2//crushing stress
//let d be diameter of rods
pi=3.14
//P=A*ft
//P=(p1/4)*d^2*ft
d=sqrt((P*4)/(pi*ft))
printf("the dia nof cotter jont is,%f mm\n",d)
//let d2 be dia of spigot and t11 be thickness
//t11=d2/4
//P=[{(pi/4)*d2^2}-(d2*t)]*ft=26.8*d2^2
d2=sqrt(P/26.8)//mm
t11=d2/4//mm
//let fc1 be induced crushing stress
fc1=P/(d2*t11)//N/mm^2
printf("the induced crushing stress is,%f N/mm^2\n ",fc1)
printf("since induced stress is greater then 90 N/mm^2,therefore d2 an t are not safe limits,let us find d2 and t by substituitn fc1=90\n")
//let d2=d21 and t=t1
//P=d21*t1*fc
//P=22.5*d2^2
d21=sqrt(P/22.5)//mm
t1=d21/4//mm
printf("the safe values od d2 and t are ,%f mm\n,%f mm\n",d21,t1)
//let b be width of cotter
//P=2*b*t1*t=(2*9.12*35)*b
b=P/(2*9.12*35)//mm
printf("the width of cotter is,%f mm\n ",b)
//let d4 be dia of socket collar
//P=(d4-d2)*t1*fc
d4=d21+(P/(t1*fc))//mm
printf("the diametr of socket collar is,%f mm\n",d4)
//let c be the thickness of socket collar
//P=2*(d4-d2)*c*t
c=P/(2*(d4-d21)*t)//mm
printf("the thicknes of socket collar is,%f mm\n",c)
//let a be distance from end of slot to end of the rod
//P=2*a*d21*t
a=P/(2*d21*t)//mm
printf("distance from end of slot to end of the rod is,%f mm\n",a)

//let d3 be dia of spigot collar
//P=(pi/4)*[d3^2-d21^2]*fc
//d3^2=d21^2 + (P*4)/(90*pi)
d3=sqrt(d21^2 + (P*4)/(90*pi))//mm
printf("dia of spigot collar is,%f mm\n",d3)
//let T1 be thickness of spigot collar
//P=pi*d21*T1*t
T1=P/(pi*d21*t)//
printf("thickness of spigot collar is,%f mm\n",T1)
printf("let thickness of spigot collar be T1=8mm=T12")
//let l be lengt of cotter
T12=8//mm
printf("the thicness of spigot colar is,%f mm\n",T12)
l=4*d//mm
e=1.2*d//mm
printf("the length of cotter and e is,%f mm\n,%f mm\n",l,e)