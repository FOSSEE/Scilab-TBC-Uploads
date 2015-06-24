clc;
//Example 5.4
//page no. 45
printf("Example 5.4 page no. 45\n\n");
//refer to example no 5.3
//determine dynamic viscosity and kinematic viscosity
omega=26.2//angular rotation speed 
D=0.25//diameter of fixed inner cylinder of viscometer
v=omega*D/2
printf("\n omega=%f rad/s\n diameter D =%f ft\n linear velocity =%2f ft/s",omega,D,v);
d=0.001//clearance betwween two cylinder of visometer
vel. gradient =v/(d/12)//velocity gradient
gc=32.14//gravitational constant
printf("\n clearance d=%5f ft\n vel. gradient=%f 1/s\n gravitational constant gc=%3f ft/s*S",d,vel. gradient,gc);
tou=311.7//shear stress tou
meu=gc*tou/vel. gradient
printf("\n tou=%f psf\n meu=%f lb/ft*s",tou,meu);
rho=60.528//density of oil
neu=meu/rho//kinamatic viscosity
printf("\n kinematic viscosity=%5f (ft*ft)/s",neu);


