//chapter 2
//for half wave dipole
//on applying kvl
printf("\n");
Im=0.0768;
Rrad=73;
r=10^4;
Prad=0.5*Rrad*Im^2;//Rrad=73 for half wave dipole
printf("the radiated power is %gW",Prad);
Gd=1.6405//on taking antilog of Gd(in db)
E4=Prad/(4*(%pi)*r^2);
E3=1.6405*E4;
E2=E3*240*(%pi);
printf("\n%g",E2);
E=sqrt(E2);
printf("\nthe field value is %gV/m",E);
