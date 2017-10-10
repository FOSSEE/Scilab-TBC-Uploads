clc;
//F=700N i +1500N j, given forc

Fx=100;//N, Comonent along X axis
Fy=-150;// N, Component along Y axis
Fz=300;// N, Component along Z axis

F=sqrt(Fx^2+Fy^2+Fz^2);// N, magnitude of force F
thetax=acos(Fx/F);// radian , angle with +ve x axis
thetay=acos(Fy/F);// radian , angle with +ve y axis
thetaz=acos(Fz/F);// radian , angle with +ve z axis

//Conversion of angles into degree
thetax=thetax*180/pi;//degree
thetay=thetay*180/pi;//degree
thetaz=thetaz*180/pi;//degree
printf("Magnitude of  F is %.2f N\n",F);
printf("Angle made by F with +ve X axis %.2f degree\n",thetax);

printf("Angle made by F with +ve Y axis %.2f degree\n",thetay);
printf("Angle made by F with +ve Z axis %.2f degree\n",thetaz);
