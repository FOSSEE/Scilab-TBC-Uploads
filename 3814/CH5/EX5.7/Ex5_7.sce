
// to find flow rate wheel diameter of each jet
// ex 5.7 pgno.121
clc
p=4.5e6 //pelton wheel develop 
no=0.8 // wheel diameter
g=9800 //gravitional acceleration
h=120 //head loss
g1=9.8 
p1=1000 // over all efficiency
N=200 //  rotational speed
Q=p/(no*g*h) // flow rate 
mprintf('\n overall efficiency no= %f m3/s',Q)
v1=sqrt(2*9.8*h) // velocity of the jet
mprintf('\n velocity of jet =%f m/s',v1)
u=v1*0.42 // peripherial velocity
mprintf('\n u =%f m/s',u)
N=200 // speed
D=(60*u)/(%pi*N) // diameter of the jet
mprintf('\n D =%f m',D)
d=D/8 // to find diameter
mprintf('\n diameter of jet = %f meter',d) // to display diameter
n=(Q*4)/(%pi*d*d*v1) // to calculate jets
mprintf('\n number of jets n = %d',n) // to display number of jets
w=(2*N*%pi)/60 // to calculate speed
wt=w*(((p/p1)^0.5)/((g1*h)^(5/4))) // specific speed
mprintf('\n wt =%f RPM',wt)

