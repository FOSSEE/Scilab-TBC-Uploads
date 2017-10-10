clc
//solution
//given
P=185*1000//W
N=100//rpm
//dE=0.15*E
D=2.4//m
R=1.2//m
//let m be mass
E=(P*60)/N//N-m
dE=0.15*E//N-m
rho=7200
Cs=0.02
v=(%pi*D*N)/60//m/s
m=dE/(v^2*Cs)//kg
printf("mass is,%f kg\n",m)
//let t be thickness and b be width of rim
//b=2t
//m=A*%pi*D*rho
//A=b*t=2*t^2
t=sqrt(m/108588)//mm
printf("the thicknes and width is,%f m\n,%f m\n",t,2*t)
//let d be dia of hub ,d1 be dia of shaft,l be length of hub
Tmean=(P*60)/(2*%pi*N)//N-m
Tmax1=2*Tmean*1000//N-mm
//d1=(Tmax1*16/(%pi*tf))^(1/3)
tf=40;
printf("dia od shaft is,%f mm\n",(Tmax1*16/(%pi*tf))^(1/3))
printf("the dia of shaft is say 165mm\n")
d1=165//mm
d=2*d1//mm
l=2*t//mm
printf("the dia of hub and length of hub is,%f mm\n,%f m\n",d,l)
//let a1 be major and b1 be minor axis
//a1=2*b1
n=6
fb=14//N/mm^2
M=Tmax1*(D*1000-d)/(D*n*1000)//N-mm
printf("bending moment is,%f N-mm\n",M)
//Z=(%pi/32)*b1*a1^2=0.05*a1^3
//fb=M/Z
a1=(M/(fb*0.05))^(1/3)//mm
b1=0.5*a1
printf("major and minor axis is,%f mm\n,%f mm\n",a1,b1)
printf("corrsponding to shaft of dia 165 mm,width is 45 mm and thicknss of key is 25 mm\n")
//let L be length of key
L=Tmax1/(45*tf*d1/2)//mm
printf("length of key is,%f mm\n",L)