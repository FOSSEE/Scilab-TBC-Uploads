//find value of P
clc
//solution
//given
//refer fig 9.29 and 9.30
T=100//N/mm^2
n=4
d=20//mm
//Ps=P/4=0.25*P//N
e=100//mm
//T1=P*e//turning moment
//la=ld=200=100//mm
//lb=lc=100//mm
//eqauting the moments equal to each other 
//P*e=(Fa/la)*[la^2+lb^2+lc^2+ld^2]
//P*e=(Fa/la)*[2*300^2+2*100^2]
//Fa=P*100*3/2000//N
//Fa=0.15*P//N
//Fb=Fa*lb/la=0.05*P//N
//Fc=Fa*lc/la=0.05*P//N
//Fd=Fa*ld/la=0.15*P//N
//Ra=Ps-Fa=0.1*P
//Rb=Ps-Fb=0.20*P
//Rc=Ps+Fc=0.30*p
//Rd=Ps+Fd=0.40*P//N
//max load is Rd
//therfore
pi=3.14
//Rd=(pi/4)*T*d^2
//0.40*P=(pi/4)*T*d^2
P=(pi/4)*T*d^2/0.40
printf("the value of force P is,%f N",P)