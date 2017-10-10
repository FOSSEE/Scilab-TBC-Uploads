clc;
//Area of plate


A=225*19;//mm^2
y=1/2*358+1/2*19;//mm, y co-ordinate of centroid of the plate
//All values for flange are from table from book
sumA=A+7230;//mm^2 Total area
sumyA=y*A+0;//mm^3
Y=sumyA/sumA;//mm 

//Moment of inertia
//For wide flanfe
Ix1=160*10^6+7203*Y^2;//mm^4
//for plate
Ix2=1/12*225*19^3+4275*(188.5-70)^2;//mm^4
//For composite area
Ix=Ix1+Ix2;//mm^4

printf("Moment of inertia Ix= %.2e mm^4 \n",Ix);

//Radius of gyration
kx=sqrt(Ix/sumA);//mm
printf("Radius of gyration is kx= %.1f mm\n",kx);
