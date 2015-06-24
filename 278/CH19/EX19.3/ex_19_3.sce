// find..
clc
//solution
//given
D=0.9//m
N=200//rpm
P=7500//W
T=145//n
//T1=2*T2
n=6
fb=15//N/mm^2
t=63//N/mm^2
v=%pi*N*D/60//m/s
//let T1 and  T2 be tneion on tight and slag side
//P=(T1-T2)*v...eq1
//T1=2T2...eq2
//from 1 and 2
T2=796//N
T1=1592//N
//b=T1/14.5//mm
printf("the widht is,%f mm\n",T1/14.5)
printf("the widht is,say 112mm\n")
b=112//mm
T=(P*60)/(2*%pi*N)*1000//N-mm
//((T*16)/(%pi*t))(1/3)=12.4*d^3
printf("the dia of shaft is,%f mm\n",(T/12.4)^(1/3))
printf("the dia of shaft is,say d=35mm\n")
d=35//mm
printf("width of pulley is B\n",112+13)
t1=D*1000/300 + 2//mm
printf("the thickness of pulley is,%f mm\n",t1)
//let b1 minor axis,a1 major axis
//a1=2*b1
M=2*T1/n*1000//N-mm
//Z=(%pi/32)*b1*a1^2=(%pi)/8*b1^3=0.393*b1^3
//fb=M/Z
b1=(M/(0.393*fb))^(1/3)//mm
printf("the minor and moajor axis is,%f mm\n,%f mm",b1,2*b1)


