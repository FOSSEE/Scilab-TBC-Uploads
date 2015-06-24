clc
//initialisation of variables
Sx= 9 //ksi
Sy= -5 //ksi
Txy= 4 //ksi
//CALCULATIONS
R= sqrt(((Sx-Sy)/2)^2+Txy^2)
Smax= ((Sx+Sy)/2)+R
Smin= ((Sx+Sy)/2)-R
ap1= (1/2)*atand(2*Txy/(Sx-Sy))
ap2= 90+ap1
Sc= (Sx+Sy)/2
Tc= R
Sd= (Sx+Sy)/2
Td= -R
a1= (90-2*ap1)/2
a2= 90+a1
//RESULTS
printf ('Smax= %.1f ksi',Smax)
printf (' \n Smin=%.1f ksi',Smin)
printf (' \n R=%.1f psi',R)
printf (' \n palne1=%.1f degrees',ap1)
printf (' \n plane 2=%.1f degrees',ap2)
printf (' \n Sc=%.1f ksi',Sc)
printf (' \n Sd=%.1f ksi',Sd)
printf (' \n Tc=%.1f ksi',Tc)
printf (' \n Td=%.1f ksi',Td)
printf (' \n palne1=%.1f degrees',a1)
printf (' \n plane 2=%.1f degrees',a2)
