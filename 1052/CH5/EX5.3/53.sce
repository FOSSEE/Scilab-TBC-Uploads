clc;
//Example 5.3
//Page no. 45
printf("Example  5.3 page no. 45\n\n");
D=0.25//diameter of fixed inner cylinder of viscometer
L=0.5//height of fixed inner cylinder of viscometer
T=15.3//measured torque
printf("Given :\n diameter =%.2f ft\n height =%f ft\n Torque=%f ft.lbf",D,L,T);
F=(2*T)/D
printf("\n force =%f lbf",F);
//the shear stress(force parallel to the surface) using equation 5.11
tou=F/(%pi*D*L)
printf("\n shear stress tou=%f psf", tou);
