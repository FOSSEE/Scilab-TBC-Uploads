//design pins at L,M,N
clc
//solution
//given
//ref fig 15.27
As=15//mm^2
tu=400//N/mm^2
ft=80//N/mm^2
pb=20//N/mm^2
Ps=As*tu//N
//let P1 be force in link LM
P1=(Ps*100)/(350)//N
//taking momnet abt N,we get P
P=(P1*100)/(900)//N
N=P1+P//N
//let d be dia and l be length of pins
//l=1.25d
//N=d*l*pb=25*d^2
//d=sqrt(N/25)//mm
printf("the dia is,%f mm\n",sqrt(N/25))
printf("the dia is ,say 10 mm\n")
d=10//mm
l=1.25*d//mm
printf("the length of pin is,%f mm\n",l)
ti=(N*4)/(2*d^2*%pi)//N/mm^2
printf("the induced stress is,%f mm\n",ti)
printf("sinc induced stress is withi safe limits,then design is safe\n")
printf("the dia of hole is,%f mm\n",d+6)
printf("the dia of boss is,%f mm\n",2*16)
//design for link
//let d1 be dia of link
//N=(%pi/4)*d1^2*ft=62.84*d1^2
d1=sqrt(N/62.84)//mm
printf("the dia of link is,%f mm\n",d1)
//let t3 be thickness and B be width of lever
t3=12.5//mm
M=N*100//N-mm
//Z=(1/6)*t*B^2=2.1*B^2
//fb=M/Z=90762/B^2
B=sqrt(90762/80)//mm
printf("the width of lever is,%f mm",B)
