clc;
//page 251
t=0.3;//m thickness of dam
g=9.81;// m/s^2, acceleration due to gravity
p1=2400;//kg/m^3, density of concrete
p2=1000;//kg/m^3, density of water
W1=0.5*2.7*6.6*t*p1*g/1000;//kN, Weight of concrete component 1
W2=1.5*6.6*t*p1*g/1000;//kN, Weight of concrete component 2
W3=1/3*3*5.4*t*p1*g/1000;//kN, Weight of concrete component 3
W4=2/3*3*5.4*t*p2*g/1000;//kN, Weight of water
P=0.5*2.7*6.6*t*p1*g/1000;//kN, pressure force exerted by water

// Applying sum(F_x)=0
H=42.9;//kN, Horizontal reation at A

//Applying sum(Fy)=0
V=W1+W2+W3+W4;//kN, Vertical Reaction at A 

printf("The horizontal reaction is H=%.1f kN ,Vertical rection at A V=%.1f kN, \n",H,V);
//Applying sum(M_A)=0
M=W1*1.8+W2*3.45+W3*5.1+W4*6-P*1.8;//kN.m, Moment at A


// We can replace force couple system by single force acting at distance right to A
d=M/V;// m Distance of resultant force from A

printf("The moment about A is M=%.1f kN.m anticlockwise and \n if we replace it by force couple system resultant,s distance from A is d= %0.2f m  \n",M,d);
//Difference is because of round off