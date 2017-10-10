clc;
m=200;//kg, mass of space vehicle
vo=150;//m/s i, relative velocty of vehicle with frame at t=0
mA=100;//kg, mass of part A
mB=60;//kg, mass of part B
mC=40;//kg, mass of part C
vA=[270,-120,160];//m/s, velocity of A
t=2.5;//s, given time
A=[555,-180,240];//m, Position of A at t=2.5
B=[255,0,-120];//m, Position of B at t=2.5

r=[vo*t,0,0];//m,  Position of mass center G

//recalling 14.12
//m*r=mA*rA+mB*rB+mC*rC
rA=A;//m, 
rB=B;//m

rC=(m*r-mA*rA-mB*rB)/mC;//m, Position of part c at t=2.5 s
//m*vo=mA*vA+mB*vB+mC*vC and   1
//Ho1=(Ho)2 ....2  gives equation 
// Equate i coefficient of 1 and j and k coefficients of 2 to zero as B lies in xz plane
vCy=300;//m/s, y component of velocity of part C
vCz=-420*vCy/450;//m/s, z component of velocity of part C
vCx=(105*vCy-45000)/450;//m/s, x component of velocity of part C
printf("Velocity of part c at t=2.5 s is vC= (%.0f m)i +(%.0f m)j +(%.0f m)k\n",vCx,vCy,vCz);
