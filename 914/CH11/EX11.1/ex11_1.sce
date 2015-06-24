clc;
warning("off");
printf("\n\n example11.1 - pg497");
// given
K_drywall=0.28;  //[Btu/ft*degF] - thermal conductivity of dry wall
K_fibreglass=0.024;  //[Btu/ft*degF] - thermal conductivity of fibre glass
K_concrete=0.5;  //[Btu/ft*degF] - thermal conductivity of concrete
T4=0;  //[degF]
T1=65;  //[degF]
deltaT=T4-T1;  //[degF]
a=1;  //[ft^2] - assuming area of 1 ft^2
deltax1=0.5/12;  //[ft]
deltax2=3.625/12;  //[ft]
deltax3=6/12;  //[ft]
R1=deltax1/(K_drywall*a);  //[h*degF/Btu]
R2=deltax2/(K_fibreglass*a);  //[h*degF/Btu]
R3=deltax3/(K_concrete*a);  //[h*degF/Btu]
qx=deltaT/(R1+R2+R3);
q12=-qx;
q23=-qx;
q34=-qx;
deltaT1=(-q12)*deltax1*(1/(K_drywall*a));
T2=T1+deltaT1;
deltaT2=(-q23)*deltax2*(1/(K_fibreglass*a));
T3=T2+deltaT2;
deltaT3=(-q34)*deltax3*(1/(K_concrete*a));
T4=T3+deltaT3;
printf("\n\n T1 = %f degF\n T2 = %f degF\n T3 = %f degF\n T4 = %f degF",T1,T2,T3,T4);

