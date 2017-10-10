
clc
P=20//lb/in^2
u=0.07//friction coefficient
N=3600//rpm
H=100//hp
r1=5//in
r2=0.8*r1//given
A=%pi*(r1^2-r2^2)//the area of each friction surface
W=A*P//total axial thrust on plates
M=(1/2)*u*W*(r1+r2)//friction moment for each pair of contacts
T=H*33000*12/(2*%pi*N)//total torque to be transmitted
x=(T/M)//effective friction surfaces required
printf("\nNumber of effective friction surfaces required= %.f\n",x)

