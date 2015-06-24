//To find resultant force
clc
//Given:
l=225/1000, PC=l, L=150/1000, r=L/2, D=112.5/1000, PG=150/1000, kG=87.5/1000 //m
mC=1.6, mR=2.4 //kg
theta=40 //degrees
p=1.8*10^6 //N/m^2
N=2000 //rpm
//Solution:
//Refer Fig. 15.27
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//By measurement,
NO=0.0625, gO=0.0685, IC=0.29, IP=0.24, IY=0.148, IX=0.08 //m
//Calculating the force due to gas pressure
FL=%pi/4*D^2*p //N
//Calculating the inertia force due to mass of the reciprocating parts
FI=mR*omega^2*NO //N
//Calculating the net force on the piston
FP=FL-FI //N
//Calculating the inertia force due to mass of the connecting rod
FC=mC*omega^2*gO //N
//Calculating the force acting perpendicular to the crank OC
FT=((FP*IP)-((mC*9.81*IY)+(FC*IX)))/IC //N
//By measurement,
FN=3550, FR=7550, FQ=13750 //N
//Results:
printf("\n\n Resultant force on the crank pin, FQ = %d N.\n\n",FQ)