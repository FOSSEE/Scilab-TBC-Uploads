//design a clamp coupling
clc
//solution
//given
P=30000//W
N=100//rpm
t=40//N/mm^2
n=6
ft=70//N/mm^2
u=0.3
//let d be dia
Tq=(P*60*1000)/(2*%pi*N)//N-mm
//Tq=(%pi/16)*t*d^3=7.86*d^3
//d=(Tq/7.86)^(1/3)//mm
printf("the dia of shaft is,%f mm\n ",(Tq/7.86)^(1/3))
printf("the dia of shaft is ,say 75mm\n")
d=75//mm
D=2*d + 13//mm
printf("the outer dia of muff is,%f mm\n",D)
L=3.5*d//mm
printf("the length of muff is,%f mm\n",L)
//from table 13.1,we find that shaft of dia 75mm diametr
w=22//width of diametre
t1=14//mm//thickness of key
//let db be the root dia
//'Tq=(%pi^2)*u*db^2*n*ft*d
//Tq=5830*db^2
db=sqrt(Tq/5830)
printf("the widht of key is,%f mm\n ",w)
printf("the thickness of key is,%f mm\n",t1)
printf("the root dia is,%f mm\n",db)