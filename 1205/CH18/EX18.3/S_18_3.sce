clc;
m=20;//kg, mass pinned At A
L=2;//m, Length of rod AB
w=15;//rad/s, angular velocity 
bta=60;//degree, angle made by rod AB with +ve X axis
bta=bta*%pi/180;//radian, conversion into radian
an=-1/2*L*cos(bta)*w^2;//m/s^2, I
ma=m*an;//N I, effective force
g=-9.81;//m/s^2, acceleration due to gravity
W=m*g;//N, weight
//from theory we get,
//H_G=1/12*m*L^2*w^2*sin(bta)*cos(bta) k
H_G=1/12*m*L^2*w^2*sin(bta)*cos(bta);//N.m k, angular momentum
//sum(M_Aeff)=0 and vector product give
T=(-L/2*sin(bta)*ma+H_G-W)/(L*sin(bta));//N, tension in the wire
printf("Tension in the wire is %.0f N\n",T);
//sum(Feff)=0, and equating coefficients we get
Ax=T+ma;//N, I x component of reaction at A
Ay=W;//N, I y component of reaction at A
printf("Reaction at A is A= (%.0f N) I + (%.1f N) I \n Here Ax is accurate. In book there is printing mistake",Ax,Ay);

