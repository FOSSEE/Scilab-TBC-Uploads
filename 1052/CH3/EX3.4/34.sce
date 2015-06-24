clc;
//Example 3.4
//page no. 28
printf("Example 3.4 page no 28\n\n");
S=2//surface area ft^2
F=10//magnitude of force,lbf
theta=%pi/6//angle
F_p=F*cos(theta)//parallel comp. of force
printf("\n F_p=%f lbf",F_p);
F_n=F*sin(theta)//normal comp. of force
printf("\n F-n=%f lbf",F_n);
tou=F_p/S//shear stress
P=F_n/S//pressure
printf("\n tou=%f psf\n P=%f psf",tou,P);

