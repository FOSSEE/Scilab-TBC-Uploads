
clc
//solution
//given
P=150*10^3//N
ft=75//N/mm^2
t=60//N/mm^2
fc=150//N/mm^2
pi=3.14
//let d be dia of rod
//P=(pi/4)*d^2*ft=59*d^2
//d=sqrt(P/59)//mm
printf("the diameter of bolt is,%f mm\n",sqrt(P/59))
printf("the diameter of bolt is,say 52mm\n")
d=52//mm
//d1=d=52//mm//dia of knuckle pin
d1=52//mm
d2=2*d//mm//dia of outer eye
d3=1.5*d//mm//dia of knucle pin head and collar
T=1.25*d//mm//thickness of single eye
T1=0.75*d//thickness of fork
T2=0.5*d//thickness of pin head
//let t1 be shear stress acting
//P=(pi/4)*2*d1^2*t1//
t1=(P*4)/(2*pi*d1^2)//N//mm^2
printf("the double shear acting is,%f N/mm^2\n",t1)
printf("since the doblue shear acting is 35.3 which is less then  60,hence desing is safe\n")
//let ft1 be failur stress
//P=(d2-d1)*T*ft1
ft1=P/((d2-d1)*T)//N/mm^2
printf("the failure stress in tension acting is,%f N/mm^2\n",ft1)
printf("since the failure stress in tension acting is 44.3 whihc is less then75,hence design is safe\n")
//let t2 be shear stress in shearing
//P=(d2-d1)*T*t2
t2=P/((d2-d1)*T)//N/mm^2
printf("the shear stress in shearing acting is,%f N/mm^2\n",t2)
printf("since the shear stress in shearing acting is 44.3 whihc is less then 60,hence design is safe\n")
//let fc1 be tension in crushing
//P=d1*T*fc1//N
fc1=P/(d1*T)//
printf("the tension in crushing is,%f N/mm^2\n",fc1)
//let ft2 forked end tension
//P=(d2-d1)*2*T1*ft2
ft2=P/((d2-d1)*2*T1)//
printf("forked end tension si,%f N/mm^2\n",ft2)
//let t3 be forked end shear
//P=(d2-d1)*T*t3*2
t3=P/((d2-d1)*T*2)//N/mm^2
printf("forked end shear is,%f N/mm^2\n",t3)
//let fc2 be stress forked end crushing
fc2=P/(d1*T*2)//N/mm^2
printf("the stress firked end crushing is,%f N/mm^2",fc2)