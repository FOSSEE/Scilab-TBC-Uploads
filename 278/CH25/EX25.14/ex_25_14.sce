//find..
clc
//solution
//given
n=12
q=(%pi/180)*7.5//rad
t=0.075//m
d=0.85//m
P=225*1000//W
N=240//rpm
u=0.4
//ref fig 25.35
//(T1+T1b)*sin(q)=Rn....eq1
//(T1-T1b)*cos(q)=uRn....eq2
//(T1/T1b)=(1+utan(q))/(1-utan(q))//constant
//similarly for other blocks
//T1b/T2b=T2b/T3b..etc remain constant
//T1/T2={(1+utan(q))/(1-utan(q))}^12=3.55//....eq1
//let P1 be least force req at C
D=d+2*t//m
//(T1-T2)=P*60/(%pi*D*N)=17900//N....eq2
//from eq1 and eq2
T1=24920//N
T2=7020//N
P1=(T2*150-T1*30)/500//N
printf("least force req is,%f N\n",P1)

