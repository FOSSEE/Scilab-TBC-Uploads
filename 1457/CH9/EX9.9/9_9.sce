clc
//Initialization of variables
gam1=0.41
g=32.2
V1=250 //fps
R1=8.2*10^6
f=0.0083
A=0.97 //ft^2
G=100 //lb/s
k=1.4
P=80 //lb/in^2
ratio=0.8
R=1715
//calculations
rho1=gam1/g
X = G^2 /(gam1*A)^2 + 2*k/(k-1) *(P*144/rho1)
P2=(k-1)/2/k *(X*ratio*rho1 - G^2 /(g^2 *A^2 *ratio*rho1))
L=563 //ft
rho2=ratio*rho1
V2=G/(rho2*g*A)
T2=P2/(rho2*R)
//results
printf("Length = %d ft",L)
printf("\n velocity = %d fps",V2)
printf("\n Temperature = %d R",T2)
