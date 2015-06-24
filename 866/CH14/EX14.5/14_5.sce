clc
//initialisation of variables
sigmax= 60 //N/mm^2
sigmay= -40 //N/mm^2
Txy= 50 //N/mm^2
E= 200000 //N/mm^2
mu= 0.3
//CALCULATIONS
Sx= (sigmax-mu*sigmay)/E
Sy= (sigmay-mu*sigmax)/E
G= E/(2*(1+mu))
gamaxy= Txy/G
e1= ((Sx+Sy)/2+(sqrt((Sx-Sy)^2+(gamaxy)^2))/2)
e2= ((Sx+Sy)-(sqrt((Sx-Sy)^2+gamaxy^2)))/2
theta= atand(-gamaxy/(Sx-Sy))/2
theta1= -90+theta
//RESULTS
printf ('direct strain in x direction= %.2e ',Sx)
printf (' \n direct strain in y direction=%.2e ',Sy)
printf (' \n Gamaxy=%.2e ',gamaxy)
printf (' \n.principal strain1=%.9e ',e1)
printf (' \n.principal strain2=%.9e ',e2)
printf (' \n.direction of plane1=%.1f degrees',theta)
printf (' \n.direction of plane2=%.1f degrees',theta1)
