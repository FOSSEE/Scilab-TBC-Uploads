clc;
T_AB=4200;//N , Tension in cable AB
T_AC=6000;//N , Tension in cable AC
// Vector AB=-(5m)i+(3m)j+(4m)k
//Vector Ac= -(5m)i+(3m)j+(5m)k
ABx=-5;//m
ABy=3;//m
ABz=4;//m
ACx=-5;//m
ACy=3;//m
ACz=-5;//m

AB=sqrt((-5)^2+3^2+4^2);//m, Magnitude of vector AB
AC=sqrt((-5)^2+3^2+5^2);//m, Magnitude of vector AC
//vT_AB=T_AB*lambdaAB, lambdaAB - unit vector= vAB/AB. So we can calculate each component by multiplying this unit vector
T_ABx=T_AB*ABx/AB;//N , X component of T_AB
T_ABy=T_AB*ABy/AB;//N , Y component of T_AB
T_ABz=T_AB*ABz/AB;//N , Z component of T_AB

printf("Component of T_AB along X axis is %.2f N\n",T_ABx);
printf("Component of T_AB along Y axis is %.2f N\n",T_ABy);
printf("Component of T_AB along Z axis is %.2f N\n",T_ABz);
printf("We may write T_AB as \n T_AB = %.2f i + %.2f j + %.2f k\n",T_ABx,T_ABy,T_ABz);


//vT_AC=T_AC*lambdaAC, lambdaAC - unit vector= vAC/AC. So we can calculate each component by multiplying this unit vector
T_ACx=T_AC*ACx/AC;//N , X component of T_AC
T_ACy=T_AC*ACy/AC;//N , Y component of T_AC
T_ACz=T_AC*ACz/AC;//N , Z component of T_AC

printf("Component of T_AC along X axis is %.2f N\n",T_ACx);
printf("Component of T_AC along Y axis is %.2f N\n",T_ACy);
printf("Component of T_AC along Z axis is %.2f N\n",T_ACz);
printf("We may write T_AC as \n T_AC = %.2f i + %.2f j + %.2f k\n",T_ACx,T_ACy,T_ACz);

Rx=T_ABx+T_ACx;//N ,X component of R
Ry=T_ABy+T_ACy;//N ,Y component of R
Rz=T_ABz+T_ACz;//N ,Z component of R

printf("Component of R along X axis is %.2f N\n",Rx);
printf("Component of R along Y axis is %.2f N\n",Ry);
printf("Component of R along Z axis is %.2f N\n",Rz);
printf("We may write R as \n R = %.2f i + %.2f j + %.2f k\n",Rx,Ry,Rz);

R=sqrt(Rx^2+Ry^2+Rz^2);//N, Magnitude of resultant

thetax=acos(Rx/R);// radian , angle with +ve x axis
thetay=acos(Ry/R);// radian , angle with +ve y axis
thetaz=acos(Rz/R);// radian , angle with +ve z axis

//Conversion of angles into degree
thetax=thetax*180/%pi;//degree
thetay=thetay*180/%pi;//degree
thetaz=thetaz*180/%pi;//degree

printf("Angle made by R with +ve X axis %.2f degree\n",thetax);

printf("Angle made by R with +ve Y axis %.2f degree\n",thetay);
printf("Angle made by F with +ve Z axis %.2f degree\n",thetaz);
