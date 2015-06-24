//desing th cover plate
clc
//solution
//given
D=120//mm
r=60//mm
p=6//N/mm^2
ft=60//N/mm^2
ftb=40//N/mm^2
t=r*[sqrt((ft+p)/(ft-p))-1]//mm
printf("the value of thicness is,%f mm\n",t)
printf("let us consider t=10mm\n")
//let d be nominal dia,dc core dia,nnumber of bolts
pi=3.14
P=(pi/4)*D^2*p//N
//let us assume d=24//mm,corrsponding dc=20.32/
d=24//mm
dc=20.32//mm
//P1=(pi/4)*dc^2*ftb*n//resistance offered by n bolts
//P1=12973*n//N
//P=P1
n=P/12973
printf("the value of number of studs is,%f \n",n)
printf("let us assume the value of number of studs is 6\n" )
d1=25//mm//dia of stid hole
t=10//mm//assume
Dp=D+2*t+3*d1//mmm
printf("the value of pitch dia is,%f mm\n",Dp)
Pc=(pi*Dp)/(6)//n=12//mm//circumferential pitch
printf("the value of circumferential pitch is,%f mm\n",Pc)
x1=20*sqrt(d1)//mm
x2=30*sqrt(d1)//mm
printf("the lower and upper limet of circumferential pitch is,%f mm\n and ,%f mm\n",x1,x2)
printf("since Pc lies btw x1 and x2,hence design is safe\n")
printf("the size of bolt is M24")