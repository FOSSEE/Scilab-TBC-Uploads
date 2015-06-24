//find..
clc
//soltuion
//given
N2=600//rpm
P=15*1000//w
N1=1750//rpm
rho=1000//kg/m^3
f=4*10^6//N/m^2
u1=0.5
u2=0.4
v=20//m/s
//ref fig 18.21
d1=v*60/(%pi*N1)//m
d2=v*60/(%pi*N2)//m
printf("the dia of mottr and blower pulley are,%f m\n,%f m\n",d1,d2)
x=2*d2//m
L=(%pi/2)*(d1+d2)+(2*x)+(d1-d2)^2/(4*x)
printf("the length of belt is,%f m\n",L)
//sin(a)=(r1-r2)/x=0.1643
a=(%pi/180)*9.46//rad
q=%pi-2*a//rad
q2=%pi+2*a
//since u1*q1 >u2*q2,therfore design is blower based

//let T1 and  T2 be tneion on tight and slag side
//P=(T1-T2)*v
//T1-T2=750//N
//log(T1/T2)=u*q=0.4*q2=0.6035
//T2=T1/4//N
T1=1000//N
T2=250//N
//let a be the area
//m=a*rho=1500*a//mass/length
//Tc=m*v^2=0.6*10^6*a//N
//T=T1+Tc=1000+(0.6*10^6*a)...eq1
//T=f*a=4*10^6*a....eq2
//eq1=eq2
a=1000/(3.4*10^6)//m^2
printf("the area of belt is,%f m^2\n",a)
Tc=0.6*10^6*a//N
To=(T1+T2+2*Tc)/2//N
printf("min initial tension is,%f N\n",To)
Toi=To+(0.5)*To//N//increased initial tensaion
//Toi=(T1i+T2i+2*Tc)/2//N
//T1i+T2i=2051.2...eq3
//T1i/T2i=4...eq4
//from eq3 an eq4
T1i=1640.96//N
T2i=T1i/4
printf("the resultant force in plane of blower is,%f N",T1i-T2i)
