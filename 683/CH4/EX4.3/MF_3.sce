// sum 4-3
clc;
clear;
d=50;
Es=0.039;
Ei=0;
es=-9*10^-3;
ei=-34*10^-3;
//Shaft dia is D
D=d+es;
//Lower limit for hole is LLH
//Upper limit for hole is ULH
//Upper limit for shaft is ULS
//Lower limit for shaft is LLS
ULH=d+Es;
LLH=d+Ei;
ULS=d+es;
LLS=d+ei;
//Maximum interference is Cmax
//minimum interference is Cmin
Cmax=ULH-LLS;
Cmin=LLH-ULS;

  // printing data in scilab o/p window
  printf("ULH is %0.3f mm ",ULH);
  printf("\n LLH is %0.3f mm ",LLH);
  printf("\n ULS is %0.3f mm ",ULS);
  printf("\n LLS is %0.3f mm ",LLS);
  printf("\n Cmax is %0.3f mm ",Cmax);
  printf("\n Cmin is %0.3f mm ",Cmin);
  disp('Therefore, H8g7 is easy running fit');