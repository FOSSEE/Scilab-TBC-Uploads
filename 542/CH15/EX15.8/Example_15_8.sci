clear;
clc;
printf("\n Example 15.8");
printf("\n Vaporisation stage :");
Pt = 101.5;
Ps = 1.44;
Sv = 0.56*(138/29)*(1.44/(101.5-1.44));
printf("\n Sv = %.3f kg/sec",Sv);

printf("\n\n COndensation stage: ")
Ptc = 100;
Psc = 0.0023;
S = 0.56*(138/29)*(0.0023/(100-0.0023));
printf("\n S = %f kg/sec",S);
