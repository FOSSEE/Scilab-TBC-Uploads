clc;
//page 465
//Area of plate


A=9*.75;//in^2
y=1/2*13.84+1/2*.75;//in, y co-ordinate of centroid of the plate
//All values for flange are from table from book
sumA=A+8.85;//in^2 Total area
sumyA=y*A+0;//in^3
Y=sumyA/sumA;//in 
//disp(Y)
//Moment of inertia
//For wide flanfe
Ix1=291+8.85*Y^2;//in^4
//for plate
Ix2=1/12*9*(3/4)^3+6.75*(7.295-3.156)^2;//in^4
//For composite area
Ix=Ix1+Ix2;//in^4

printf("Moment of inertia Ix= %.2e in^4 \n",Ix);

//Radius of gyration
kx=sqrt(Ix/sumA);//mm
printf("Radius of gyration is kx= %.1f in\n",kx);
