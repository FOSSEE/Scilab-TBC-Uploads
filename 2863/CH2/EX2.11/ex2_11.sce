//chapter 2
//Hphi=Im*dl*sin(theta)/(2*lamda*r);
//for Hertzian Dipole
printf("\n");
Hphi=5*10^-6;
lamda=1;//assume
dl=0.04;
Im=(5*10^-6)*2*(2*10^3)/(0.04);
Irms=Im/(sqrt(2));
Prad=80*(%pi)^2*(0.04)^2*(Irms)^2;
printf("the radiated Power is %gW",Prad);
