clc
//Initialization of variables
A=140 //in^2
P=48 //lb/in^2
mu=3.78*10^-7
g=32.2
G=100 //lb/s
p=80 //lb/in^2
T=65+460 //R
k=1.4
R=1715
//calculations
Rh=A/P /12
R1=G*4*Rh/ (mu*g*A/144)
R2=R1
f=0.0083
gam1=p*g*144/(R*T)
V1=G*144/gam1/A
c=sqrt(k*R*T)
M1=V1/c
M2=1/sqrt(k)
D=4*Rh
L= ((1-M1^2 /M2^2)/(k*M1^2) - 2*log(M2/M1) )*D/f
Ln=500 //ft
P2=sqrt((p*144)^2 - G^2 *R*T/(g^2 *(A/144)^2 *f*Ln/D))
Pa=12.2
//results
printf("Max. length = %d ft",L)
printf("\n Pressure required = %.1f psia",P2/144 -Pa)
