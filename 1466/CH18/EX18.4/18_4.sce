
clc
//initialisation of variables
f=0.002
 T=520//F
 p1=100//ln/in^2
 p2=50//lb/ni^2
 g=32.2//ft/sec^2
 R=53.3
 l=60//ft
 d=0.25//in
 n=0.37*10^-6//engineer units
w=0.4//lb/ft^3
w1=0.53
f1=0.0022
 //CALCULATIONS
 r=p1/p2
 v1=sqrt((g*R*T*((r*r)-1))/(2*r*r*(log(r)+(2*f*l/d))))
 v2=r*v1
 mv=(v2+v1)/2
 mp=(p1+p2)/2
 Re=(w*mv*d/(g*n))
 nv1=sqrt((g*R*T*((r*r)-1))/(2*r*r*(log(r)+(2*f1*l/d))))
 nv2=r*nv1
 W=w1*%pi*d*d*nv1/4
 //RESULTS
 printf ('\n velocity at outlet= %.f ft/sec',nv2)
 printf ('\n flow per second= %.2f lb/sec',W)
