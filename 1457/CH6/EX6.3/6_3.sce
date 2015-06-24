clc
//Initialization of variables
v2=36 //fps
beta=150 //degrees
u=60 //fps
rho=1.94
Qd=0.0218
V1=100 //fps
gam=62.4
g=32.2
//calculations
v2s=v2*sind(beta)
v2c=u+v2*cosd(beta)
V2=34 //fps
alpha=32 //degrees
Fx=rho*Qd*(v2c-V1)*(V1-u)
Fy=-rho*Qd*(V1-u)*v2s
Fx2=rho*Qd*V1*(v2c-V1)
HPin=gam*Qd*V1*(V1^2 /(2*g))/550
HPout=gam*Qd*V1*(V2^2 /(2*g))/550
HPtransfer=-Fx2*u/550
HPfl=HPin-HPout-HPtransfer
//results
printf("Force exerted by water on the vane = %d lb",Fx2)
printf("\n Friction loss = %.1f hp ",HPfl)
