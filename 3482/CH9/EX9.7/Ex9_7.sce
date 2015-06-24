clc;
//page 479
Ix=10.38;//in^4,Moment of inertia about x axis
Iy=6.97;//in^4,Moment of inertia about y axis

Ixy=-3.28+0-3.28
disp(Ixy)//in in^4

//Principal axes
tan_2_theta_m=-(2*Ixy)/(Ix-Iy)
two_theta_m=atand(tan_2_theta_m)
theta_m=two_theta_m/2
printf("Orientation of principle axes of section about O is Theta_m= %.1f degree \n",theta_m);

//Principle moment of inertia, eqn 9.27
Imax=(Ix+Iy)/2+sqrt(((Ix-Iy)/2)^2+Ixy^2);//mm^4
Imin=(Ix+Iy)/2-sqrt(((Ix-Iy)/2)^2+Ixy^2);//mm^4

printf("Principle moment of inertia of section about O are \n Imax= %.2e in^4 \n Imin= %.0e  in^4\n",Imax,Imin);
//answer difference is due to roundoff


