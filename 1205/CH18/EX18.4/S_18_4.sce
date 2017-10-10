clc;
m=300;//g, mass of each rod
m=m/1000;//kg, conversion into kg
c=100;//mm, length of each rod
c=c/1000;//m, conversion into meter
//From theoritical work , we got formula for Dy and Dz
w=1200;//rpm
w=w*2*%pi/60;//rad/s, conversion
M=6;//N.m, Couple applied to shaft
Dy=-3/16*M/c-1/4*m*c*w^2;//N, y component of reaction at D
Dz=3/8*M/c-1/8*m*c*w^2;//N, z component of reaction at D
printf("Components of dynamic reaction at D is Dy= %.1f N and Dz= %.1f N\n",Dy,Dz);
//Applying similar theory we get following expressions
Cy=-9/16*M/c-1/4*m*c*w^2;//N, y component of reaction at C
Cz=3/8*M/c-3/8*m*c*w^2;//N, z component of reaction at C
printf("Components of dynamic reaction at C is Cy= %.1f N and Cz= %.1f N\n",Cy,Cz);
