//design adjustable screwed joint
clc
//solution
//given
P=50*10^3//N
ft=75//N/mm^2
t=37.5//N/mm^2
pi=3.14
Pd=1.3*P//N//load for threaded section
//let d be dia and dc be core dia
//Pd=(pi/4)*dc^2*ft 
//dc=sqrt((4*Pd)/(pi*ft))//mm
printf("the core dia is,%f mm\n",sqrt((4*Pd)/(pi*ft)))
printf("the standard core dai using table 11.1 is 34.093mm\n")
dc=34.093//mm
//corrresponding dia d =39
d=39//mm
printf("the dia of rod is,%f mm\n",d)
//let l be length of coupler nut
//Pd=pi*dc*l*t
//l=P/(pi*dc*t)//mm
printf("the length of coupler nut is,%f mm\n",P/(pi*dc*t))
x1=d//mm
x2=1.25*d//mm
printf("the upper and lower limit of lkength are,%f mm\n,%f mm\n",x1,x2)
printf("taking l=x1=d into calculation\n")
l=d//mm
n=1/4//mm
//Pd=(pi/4)*[d^2-dc^2]*n*l*fc=2750*fc
fc=(Pd/[(pi/4)*[d^2-dc^2]*n*l])
printf("the crushing load is,%f N/mm^2\n",fc)
//let D be outer dia
//P=(pi/4)*(D^2-d^2)*ft
D=[{(P*4)/(pi*ft)}+d^2]^0.5//mm
printf("the outer dai is,%f mm\n",D)
//let D1 and D2 be outer and inner dia of coupler
D1=d+6//mm
D2=[{(P*4)/(pi*ft)}+D1^2]^0.5//mm
printf("the outer and inner dia are,%f mm\n,%f mm\n",D1,D2)
//let L be length of coupler
L=6*d//mm
printf("the length of coupler is,%f mm\n",L)
T1=0.75*d//mm
printf("the thickness of coupler is,%f mm\n ",t1)
T2=0.5*d//mm
printf("the thickness of coupler nut is,%f mm\n",T2)
