//To find effort, thrust and turning moment
clc
//Given:
D=300/1000, L=500/1000, r=L/2 //m
n=4.5
N=180 //rpm
mR=280 //kg
theta=45 //degrees
p1=0.1 //N/mm^2
CR=14 //Compression ration, V1/V2
//Solution:
//Refer Fig. 15.12
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the pressure corresponding to point 2
p2=p1*(CR)^1.35 //N/mm^2
//Calculating the swept volume
VS=%pi/4*D^2*L //m^3
//Calculating the clearance volume
VC=VS/(CR-1) //m^3
//Calculating the volume corresponding to point 3
V3=VC+(1/10*VS) //m^3
//Calculating the displacement of the piston corresponding to crank displacement of 45 degrees
x=r*((1-cosd(theta))+(sind(theta))^2/(2*n)) //m
//Calculating the volume corresponding to point 4'
V4dash=VC+(%pi/4*D^2*x) //m^2
//Calculating the pressure corresponding to point 4'
p3=p2
p4dash=p3*(V3/V4dash)^1.35 //N/mm^2
//Calculating the difference of pressures on two sides of the piston
p=(p4dash-p1)*10^6 //N/m^2
//Calculating the net load on the piston
FL=p*%pi/4*D^2 //N
//Calculating the inertia force on the reciprocating parts
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the net force on the piston or piston effort
FP=FL-FI+mR*9.81 //N
//Crank-pin effort:
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the crank-pin effort
FT=(FP*sind(theta+phi))/(cosd(phi)*1000) //kN
//Calculating the thrust on the bearings
FB=(FP*cosd(theta+phi))/(cosd(phi)*1000) //kN
//Calculating the turning moment on the crankshaft
T=FT*r //kN-m
//Results:
printf("\n\n Crank-pin effort, FT = %.3f kN.\n\n",FT)
printf(" Thrust on the bearings, FB = %.3f kN.\n\n",FB)
printf(" Turning moment on the crankshaft, T = %.2f kN-m.\n\n",T)