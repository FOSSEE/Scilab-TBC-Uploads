clc
//initialisation of variables
Sx= 1800 //lb
Sy= 1000 //lb
angle= 30 //degrees
//CALCULATIONS
Sa=-((Sx+Sy)/2+((Sx-Sy)/2)*cosd(2*angle))*cosd(2*angle)-(Sx-Sy)
Ta= -((Sx+Sy)/2+((Sx-Sy)/2)*cosd(2*angle))*sind(2*angle)
Sb=((Sx+Sy)/2+((Sx-Sy)/2)*cosd(2*angle))*cosd(2*angle)-(Sx-Sy)
Tb= ((Sx+Sy)/2+((Sx-Sy)/2)*cosd(2*angle))*sind(2*angle)
//RESULTS
printf ('Sa= %.1f psi',Sa)
printf (' \n Sb=%.1f psi',Sb)
printf (' \n Ta=%.1f psi',Ta)
printf (' \n Tb=%.1f psi',Tb)
