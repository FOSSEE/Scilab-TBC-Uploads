clc;
// Resolving forces 125 N and 90  N
f1=125;//N
f2=90;//N
f3=200;//N
theta=45;// degree, angle made by f1 with x axis
theta=theta*%pi/180;// Conversion of angle into radian
alpha=30;// degree, angle made by force f2 with y axis
alpha=alpha*%pi/180;// Conversion of angle into radian
f1x=f1*cos(theta);//N, X component of 125 N.
f1y=-f1*sin(theta);//N, Y component of 125 N

f2x=-f2*sin(alpha);//N, X component of 90N
f2y=-f2*cos(alpha);//N, Y component of 90N

// Equivalent force at A
Rx=f1x+f2x;//N
Ry=f1y+f2y-f3;//N
R=[Rx,Ry];//N
R=norm(R);//N, magnitude of resultant
theta=atan(Ry/Rx);//radian, angle of resultant with X axis
theta=theta*180/%pi;

printf("Equivalent force at A is R=%.2fN with angle %.2f Degrees \n ",R,theta);

//equivalent couple at A
//Clockwise moments are negative
Meq=-550*f2*sin(35*%pi/180)-800*f3*sin(65*%pi/180)-1200*f1*sin(65*%pi/180);//N.mm , sum of all moments
Meq=Meq/1000;// N.m conversion into N.m


printf("Equivalent couple at A is Meq= %.2f N.m \n",Meq);

