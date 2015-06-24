//page 50
clc;
dx=-40;//m
dy=80;//m
dz=30;//m
f=2500;//N, Mafnitude of force F
d=sqrt(dx^2+dy^2+dz^2);//m, total distance of vector AB
//F=f*lambda, lambda - unit vector= AB/d. So we can calculate each component by multiplying this unit vector
Fx=f*dx/d;//N , X component of F
Fy=f*dy/d;//N , Y component of F
Fz=f*dz/d;//N , Z component of F

printf("Component of F along X axis is %.2f N\n",Fx);
printf("Component of F along Y axis is %.2f N\n",Fy);
printf("Component of F along Z axis is %.2f N\n",Fz);
printf("We may write F as \n F = %.2f i + %.2f j + %.2f k\n",Fx,Fy,Fz);

thetax=acos(Fx/f);// radian , angle with +ve x axis
thetay=acos(Fy/f);// radian , angle with +ve y axis
thetaz=acos(Fz/f);// radian , angle with +ve z axis

//Conversion of angles into degree
thetax=thetax*180/%pi;//degree
thetay=thetay*180/%pi;//degree
thetaz=thetaz*180/%pi;//degree

printf("Angle made by F with +ve X axis %.2f degree\n",thetax);

printf("Angle made by F with +ve Y axis %.2f degree\n",thetay);
printf("Angle made by F with +ve Z axis %.2f degree\n",thetaz);
printf("\n\n")
F=800 // N , given force
theta=145 // Degrees , angle with posiyive X axis 

theta=theta*%pi/180;// Conversion into radian

Fx=F*sin(theta);//N, Horizontal component
Fy=F*cos(theta);// N, Vertical Component
printf("\n\n")
printf("Horizontal component of F is %.2f N\n",Fx);
printf("Vertial component of F is %.2f N\n",Fy);
printf("We may write F as \n F = %.2f i + %.2f j",Fx,Fy);

F=300 // N , given force
AB=sqrt(8^2+6^2);// m Length of AB
cos_alpha=8/AB;
sin_alpha=-6/AB;
Fx=F*cos_alpha;//N, Horizontal component
Fy=F*sin_alpha;// N, Vertical Component

