clc;
//page 411
F=400;//lb, force exerte
us=0.35;// Coeffiecient of static friction
phi=atand(us);//rad, angle of friction
//disp(phi)
theta=8;//degree, angle of inclination
theta=theta*%pi/180;//rad, Conversion into radian

//Using sine rule
//force p to raise block
//free body , block B
R1=F*sind(109.3)/(sind(43.4))
//free body wedge A
P=R1*sind(46.6)/(sind(70.7))
printf(" force required to raise block is P=%.0f lb\n",P);

//force to lower block
//free body , block B
R1=F*sind(70.7)/(sind(98.0))
//free body wedge A
P=R1*sind(30.6)/(sind(70.7))
printf(" force required to lower block is P=%.0f lb\n",P);































