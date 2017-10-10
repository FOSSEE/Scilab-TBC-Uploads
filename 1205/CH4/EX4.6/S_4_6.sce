clc;

m=10;//kg mass of joist
g=9.81;//m/s^2 gravitational acceleration
W=m*g;//N
AB=4;//m
// Three force body
BF=AB*cos(45*%pi/180);//m
AF=BF;//m

AE=1/2*AF;//m
EF=AE;//m
CD=AE;//m
BD=CD/tan((45+25)*%pi/180);//m
DF=BF-BD;//m
CE=DF;//m
alpha=atan(CE/AE);//radians
alpha=alpha*180/%pi;//degrees

//From geometry

G=90-alpha;//degrees
B=alpha-(90-(45+25));//degrees
C=180-(G+B);//Degrees

//Force triangle
//T/sin(G)=R/sin(C)=W/sin(B)..... sine law

T=W/sin(B*%pi/180)*sin(G*%pi/180);//N
R=W/sin(B*%pi/180)*sin(C*%pi/180);//N
printf("Tension in cable T= %.1f N\n Reaction At A is R= %.1f N with angle alpha= %.1f degrees with +ve X axis",T,R,alpha); 

