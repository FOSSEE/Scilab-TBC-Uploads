clc;
//Page 335
P=2400;//N, Vertical Force applied at D
AB=2.7;//m, perpendicular distance between A and B
BE=2.7;//m, perpendicular distance between E and B
BK=1.5;//m, perpendicular distance between B and K
AJ=1.2;//m, perpendicular distance between A and J
EF=4.8;//m, perpendicular distance between E and F
BD=3.6;//m, perpendicular distance between D and B
//For entire truss
//By free body diagram we get the force at A, B , c
A=1800;//N
B=1200;//N
C=3600;//N
alpha=atan(EF/(AB+BE));//rad
//a. Internal forces at j
//Applying sum(M_J)=0
M=A*AJ;//N.m,Couple on member ACF at J
//Applying sum(Fx)=0
F=A*cos(alpha);//N, Axial force at J
//Applying sum(Fy)=0
V=A*sin(alpha);//N, shearing force at J
printf("Thus, Internal forces at J are equivalent to \n Couple M = %.0f N.m \n Axial force F= %.0f N \n Shearing force V= %.0f N\n",M,F,V);

//a. Internal forces at K
//Applying sum(M_K)=0
M=B*BK;//N.m,Couple on frame
//Applying sum(Fx)=0
F=0;//N, Axial force at J
//Applying sum(Fy)=0
V=-B;//N, shearing force at J
printf("Thus, Internal forces at K are equivalent to \n Couple M = %.0f N.m \n Axial force F= %.0f N \n Shearing force V= %.0f N\n",M,F,V);
