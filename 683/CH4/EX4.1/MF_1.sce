// sum 4-1
clc;
clear;
d=70;
dmin=50;
dmax=80;
D=sqrt(dmin*dmax);
D=63;
i=0.458*(D^(1/3))+(0.001*D);

//standard tolerance for H8 is ST1
ST1=25*i;
ST1=ST1*10^-3;
//standard tolerance of shaft for grade g7 is ST2
ST2=16*i;
ST2=ST2*10^-3;
es=-(2.5*(D^0.333));
es=es*10^-3;
ei=es-ST2;
//Lower limit for hole is LLH
//Upper limit for hole is ULH
//Upper limit for shaft is ULS
//Lower limit for shaft is LLS
LLH=d;
ULH=LLH+ST1;
ULS=LLH+es;
LLS=ULS-ST2;
//Maximum clearance is Cmax
//minimum clearance is Cmin
Cmax=ULH-LLS;
Cmin=LLH-ULS;

  // printing data in scilab o/p window
  printf("LLH is %0.1f mm ",LLH);
  printf("\n ULH is %0.3f mm ",ULH);
  printf("\n ULS is %0.2f mm ",ULS);
  printf("\n LLS is %0.2f mm ",LLS);
  printf("\n Cmax is %0.3f mm ",Cmax);
  printf("\n Cmin is %0.3f mm ",Cmin);
 