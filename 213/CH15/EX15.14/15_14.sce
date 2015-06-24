//To find turning moment
clc
//Given:
D=240/1000, L=360/1000, r=L/2, l=0.6 //m
N=300 //rpm
mR=160 //kg
pA=(8+1.03)*10^5, pE=(-0.75+1.03)*10^5 //N/m^2
FR=500 //N
theta=75 //degrees
//Solution:
//Refer Fig. 15.13
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the stroke volume
VS=%pi/4*D^2*L //m^3
//Calculating the volume of steam at cut-off
VB=VS/3 //m^3
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the displacement of the piston when the crank position is 75 degrees from the top dead centre
x=r*((1-cosd(theta))+(sind(theta))^2/(2*n)) //m^3
//Calculating the volume corresponding to point C'
VCdash=VS*x/L //m^3
//Calculating the pressure corresponding to point C'
pB=pA
pCdash=round((pB*VB)/VCdash) //N/m^2
//Calculating the difference of pressures on the two sides of the piston
p=round(pCdash-pE) //N/m^2
//Calculating the net load on the piston
FL=round(%pi/4*D^2*p) //N
//Calculating the inertia force on the reciprocating parts
FI=round(mR*omega^2*r*(cosd(theta)+(cosd(2*theta)/n))) //N
//Calculating the piston effort
FP=FL-FI+mR*9.81-FR //N
//Turning moment on the crankshaft:
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the turning moment on the crankshaft
T=(FP*sind(theta+phi))/cosd(phi)*r //N-m
//Results:
printf("\n\n Turning moment on the crankshaft, T = %d N-m.\n\n",T)