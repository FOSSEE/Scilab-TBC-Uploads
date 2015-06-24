clc
//initialisation of variables
directstress= 80 //N.mm^2
shearstress= 45 //N/mm^2
//CALCULATIONS
Sx= directstress 
Sy= 0
Txy= shearstress
sigma1= ((Sx+Sy)/2)+(sqrt((Sx-Sy)^2+4*Txy^2))/2
sigma2= ((Sx+Sy)/2)-(sqrt((Sx-Sy)^2+4*Txy^2))/2
theta= (atand(-((2*Txy)/(Sx-Sy))))/2
direction1= theta
direction2= theta-90
Tmax= (sigma1-sigma2) /2
theta1= direction1-45
theta2= direction2-45
//RESULTS
printf ('principal stress1= %.1f N/mm^2',sigma1)
printf (' \n principal stress2=%.1f N/mm^2',sigma2)
printf (' \n direction of principal stress1=%.1f degrees',direction1)
printf (' \n.direction of principal stress2=%.1f degrees',direction2)
printf (' \n.maximum shear stress=%.1f N/mm^2',Tmax)
printf (' \n.derection of plane1=%.1f degrees',theta1)
printf (' \n.derection of plane2=%.1f degrees',theta2)
