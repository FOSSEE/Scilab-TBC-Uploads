//desing
clc
//soltuion
//given
//ref fig 17.12
W=4000//N
l=110//mm
ft=100//N/mm^2
t=50//N/mm^2
pb=20//N/mm^2
p=6
u=0.20
//design of square
//cos(q)=0.8112
q=(%pi/180)*35.1//rad
F=W/(2*tan(q))//N
W1=2*F//N
//let dc be core dia
//dc=sqrt(4*W1/(%pi*ft))
printf("the core dia is,%f mm\n",sqrt(4*W1/(%pi*ft)))
printf("the core dia is,say dc=14 mm\n")
dc=14//mm
do=dc+p
printf("the nominal dia is,%f mm\n",do)
d=do-p/2
//tan(a)=p/(%pi/d)=b=0.1123
b=0.1123
P=W*[(b+u)/(1-(b*u))]//N
T=(P*d/2)
t1=(16*T)/(%pi*dc^3)///N/mm^2
ft1=W1/(%pi/4*dc^2)//N/mm^2
ftmax=0.5*(ft1+ sqrt(ft1^2 +4*t1^2))//N/mm^2
tmax=0.5*(sqrt(ft1^2 + 4* t1^2))//N/mm^2
printf("the max prin stress and max shear stress is,%f N/mm^2\n,%f N/mm^2\n",ftmax,tmax)
printf("since max stresses are within safe limits,therefore design is safe\n")
//design of nut
//let n be numbr of threads
//n=W1/(%pi/4*20*(do^2-dc^2))
printf("the numbr of threads are ,%f \n",W1/(%pi/4*20*(do^2-dc^2)))
printf("since number of threads can not so less,so we take n=4\n")
n=4
t2=n*p//mm
printf("the number of therd and thickness of threads is,%f \n,%f mm\n",n,t2)
b1=1.5*do
printf("the width of nut is,%f mm\n",b1)
length =210+t2+(2*8)
printf("the length of screwd portion is,%f mm\n",length)
//desig of pins in nuts
//let d1 be dia
d1=sqrt(F/(2*%pi/4*t))
printf("the dia of pins in nuts is,%f mm\n",d1)
//design of links
F1=F/2//load on link
Wcr=1423*5//Fs=5
//let t3 be thickness and b3 be width of link
//Al=t3*3t3=3*t3^2//b3=3*t3
//I=(1/12)*t3*b3^2=2.25*t3^4
//k=sqrt(I/Al)=0.866*t3
L=110
a=1/7500
//acc tor ankine fornula
//Wcr=(ft*Al)/(1+a*(L/k)^2)=300*t3^2/(1+(2.15/t1^2))
//t3^4-23.7*t3^2-51=0
//t3=sqrt(25.7)//mm
printf("the thickness and width is,%f mm\n,%f mm\n",sqrt(25.7),3*sqrt(25.7))
printf("the thickness is say 6mm\n")
t3=6//mm
b3=3*t3//mm
Al=3*t3^2