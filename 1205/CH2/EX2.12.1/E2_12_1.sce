clc;
F=500;//N, Given force
thetax=60;//degree , angle made by F with X axis
thetay=45;//degree , angle made by F with Y axis
thetaz=120;//degree , angle made by F with Z axis

//conversion into radian
thetax=thetax*pi/180;
thetay=thetay*pi/180;
thetaz=thetaz*pi/180;

//Calculating component
Fx=F*cos(thetax);//N, Component of F along x axis
Fy=F*cos(thetay);//N, Component of F along y axis
Fz=F*cos(thetaz);//N, Component of F along z axis

printf("Component of F alongX axis is %.2f N\n",Fx);
printf("Component of F along Y axis is %.2f N\n",Fy);
printf("Component of F along Z axis is %.2f N\n",Fz);
printf("We may write F as \n F = %.2f i + %.2f j + %.2f k",Fx,Fy,Fz);
