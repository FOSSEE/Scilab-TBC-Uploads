clc;
yB=0.5;//m, sag of the cable
m=0.75;//kg/m, mass per unit length
g=9.81;//m/s^2, acceleration due to gravity
AB=40;//m, distance AB
//a. Load P
w=m*g;//N/m , Load per unit length
xB=AB/2;//m, distance CB
W=w*xB;//N, applied at halfway of CB

//Summing moments about B
//sum(M_B)=0
To=W*xB/2/yB;//N
//from force triangle
TB=sqrt(To^2+W^2);//N, =P, as tension on each side is same
printf("Magnitude of load P= %.0f N \n",TB);
//slope of cable at B
theta=atan(W/To);//rad
theta=theta*180/%pi;//degree, conversion to degree
printf("Slope of cable at B is theta= %.1f degree\n",theta);
//length of cable
//applying eq. 7.10
sB=xB*(1+2/3*(yB/xB)^2);//m

printf("Total length of cable from A to B is Length= %.4f m\n",2*sB);

