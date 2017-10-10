clc;

F=2000;//N, force exerte
us=0.35;// Coeffiecient of static friction
phi=atan(us);//rad, angle of friction
theta=8;//degree, angle of inclination
theta=theta*%pi/180;//rad, Conversion into radian

//Using sine rule
//force p to raise block
//free body , block B
R1=F/sin(%pi/2-2*phi-theta)*sin(%pi/2+phi);//N, 
//free body wedge A
P=R1*sin(2*phi+theta)/sin(%pi/2-phi);//N, 
printf(" force required to raise block is P=%.0f\n",P);

//force to lower block
//free body , block B
R1=F*sin(%pi/2-phi)/sin(%pi/2+theta);//N, 
//free body wedge A
P=R1*sin(2*phi-theta)/sin(%pi/2-phi);//N, 
printf(" force required to lower block is P=%.0f\n",P);



