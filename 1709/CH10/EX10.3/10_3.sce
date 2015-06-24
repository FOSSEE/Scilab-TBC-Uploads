clc
//Initialization of variables
m1=5
m2=2
cp1=0.248
cp2=0.203
T11=300 //F
T12=100 //F
P=10 //psia
Pi=20 //psia
Pf=15 //psia
//calculations
T2=(m1*cp1*T11 + m2*cp2*T12)/(m1*cp1+m2*cp2)
n1=m1/28
n2=m2/44
n=n1+n2
P1=P*n1/n
P2=P*n2/n
dS=m2*(cp2*log((T2+460)/(T12+460)) - 35.1/778 *log(P2/Pi)) +m2*(cp2*log((T2+460)/(T12+460)) - 55.2/778 *log(P1/Pf))
//results
printf("change in enthalpy = %.2f B/R",dS)
