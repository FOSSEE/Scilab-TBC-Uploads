 clear;
clc;

printf("\t Example 2.12\n");
Rf=0.0005;   //fouling ressistance,m^2*K/W
U=5;   //heat transfer coefficient,W/(m^2*K)
Ucor=(U*Rf+1)/(U);
printf("\t corrected heat transfer coefficient is : %.2f W/(m^2*K)\n therefore the fouling is entirely irrelevant to domestic heat holds.", Ucor);
//end
