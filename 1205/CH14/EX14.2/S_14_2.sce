clc;
m=10;//kg, mass of projectile before exploding
v=30;//m/s, velocity of projectile before exploding
mA=2.5;//kg, mass of fragment A of projectile
mB=7.5;//kg, mass of fragment B of projectile
thetaA=45;//degree, direction of fragment A
thetaA=thetaA*%pi/180;//rad, conversion into radian
thetaB=30;//degree, direction of fragment B
thetaB=thetaB*%pi/180;//rad, conversion into radian
//Law of conservation of momentum gives
//mA*vA+mB*vB=m*v
//Taking x and y components of vA and vB we get
A=[mA*cos(thetaA),mB*cos(thetaB);mA*sin(thetaA),-mB*sin(thetaB)];// matrix of coefficients
B=[m*v;0];//matrix B, v is along X axis
X=linsolve(A,-B);//solution matrix
vA=X(1);//m/s, velocity of fragment A
vB=X(2);//m/s, velocity of fragment B
printf("Velocity of fragment A after explosion is %.2f m/s \n Velocity of fragment B after explosion is %.1f m/s with given directions\n",vA,vB);
