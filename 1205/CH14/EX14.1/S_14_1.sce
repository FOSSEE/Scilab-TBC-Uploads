clc;
m=200;//kg, mass of space vehicle
vo=150;//m/s i, relative velocty of vehicle with frame at t=0
mA=100;//kg, mass of part A
mB=60;//kg, mass of part B
mC=40;//kg, mass of part C

t=2.5;//s, given time
A=[555,-180,240];//m, Position of A at t=2.5
B=[255,0,-120];//m, Position of B at t=2.5

r=[vo*t,0,0];//m,  Position of mass center G

//recalling 14.12
//m*r=mA*rA+mB*rB+mC*rC
rA=A;//m, 
rB=B;//m

rC=(m*r-mA*rA-mB*rB)/mC;//m, Position of part c at t=2.5 s
printf("Position of part c at t=2.5 s is rC= (%.0f m)i +(%.0f m)j +(%.0f m)k\n",rC(1),rC(2),rC(3));
