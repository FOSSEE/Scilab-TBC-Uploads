//chapter 2
//Etheta=n0Im/2pir*cos(pi/2 cos(theta)/sin(theta))
printf("\n");
Pin=100;
n=0.5;
r=500;
Prad=n*Pin;
printf("the radiated power is %gW",Prad);
Rrad=73;//for half wave dipole
Im=sqrt((2*Prad)/Rrad);
n0=120*(%pi);
Etheta=(cos((%pi/2)*cos(%pi/3))/sin(%pi/3))*n0*(Im/(2*(%pi)*r));
printf("\nthe electric field is given by %gV/m",Etheta);
Pavg=(0.5*(Etheta)^2)/(n0);
printf("\nthe average power is %gW",Pavg);
