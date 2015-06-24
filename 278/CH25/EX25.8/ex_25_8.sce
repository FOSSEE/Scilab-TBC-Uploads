//find..
clc
//solution
//given
d=600//mm
r=300//mm
N=200//rpm
u=0.25
q=4.713//rad
P=35000//W
t=2.5//mm
ft=50//N/mm^2
//let P1 be pull
//log(T1/T2)=u*q
//T1/T2=3.25...eq1
//let Tb be breaking torque
//ref fig 25.16
Tb=P*60/(2*%pi*N)*1000//N-mm
//Tb=(T1-T2)*r=300(T1-T2)
//T1-T2=5557//N.....eq2
//from eq1 and eq2,we get
T1=8027//N
T2=2470//N
//taking moment abt O
//P1*750=T*OD=T2*62.5*1.414
P1=T2*62.5*1.414/750//N
printf("pull req is,%f N\n",P1)
//let w be width 
w=T1/(ft*t)
printf("width is,%f mm\n",w)