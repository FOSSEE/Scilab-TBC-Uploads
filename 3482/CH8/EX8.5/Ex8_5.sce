clc;

//page 412
pitch=2;//mm, pitch of screw
d=10;//mm, mean diameter of thread
r=d/2;//mm, radius
us=0.30;// Coeffiecient of static friction
M=40;//kN.m , Maximum couple

//Force exerted by clamp
L=2*pitch;//mm, as screw is double threaded
theta=atan(L/(2*%pi*r));//rad, angle of inclination
phi=atan(us);//rad, angle of friction
Q=M/r*1000;//N, Force applied to block representing screw
Q=Q/1000//kN, Conversion into kN
W=Q/tan(theta+phi);//kN, Magnitude of force exerted on the piece of wood 
printf("Magnitude of force exerted on the piece of wood  is W= %.2f kN \n",W);
//Couple required to loosen clamp
Q=W*tan(phi-theta);//kN, Force required to loosen clamp
Couple=Q*r;//N.m, Couple required to loosen clamp
printf("Couple  required to loosen clamp is %.2f N.m\n",Couple);
