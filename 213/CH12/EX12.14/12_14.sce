//To find pressure angle and teeth
clc
//Given:
T=20
d=125, r=d/2, OP=r, LH=6.25 //mm
//Calculating the least pressure angle to avoid interference
phi=asin(sqrt(LH/r))*180/%pi //degrees
//Length of arc of contact:
//Calculating the length of path of contact
KL=sqrt((OP+LH)^2-(OP*cosd(phi))^2) //mm
//Calculating the length of arc of contact
Lac=KL/cosd(phi) //Length of arc of contact, mm
//Minimum number of teeth:
//Calculating the circular pitch
pc=%pi*d/T //mm
//Calculating the number of pairs of teeth in contact
n=Lac/pc //Number of pairs of teeth in contact
//Calculating the minimum number of teeth in contact
nmin=n //Mimimum number of teeth in contact
//Results:
printf("\n\n Least pressure angle to avoid interference, phi = %.3f degrees.\n\n",phi)
printf(" Length of arc of contact = %.2f mm.\n\n",Lac)
printf(" Minimum number of teeth in contact = %d or %d pair.\n\n",nmin+1,(nmin+1)/2)