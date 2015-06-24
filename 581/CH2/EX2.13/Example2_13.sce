 
clear;
clc;

printf("\t Example 2.13\n");
U1=4000; //overall heat transfer coefficient of water cooled steam condenser, W/(m^2*K)
Rf1=0.0006; // lower limit of fouling ressistance of water side, m^2*K/W
Rf2=0.0020; // upper limit of fouling ressistance of water side, m^2*K/W
U2=U1/(U1*Rf1+1);
U3=U1/(U1*Rf2+1);
printf("\t upper  limit of the corrected overall heat transfer coefficient is : %.0f W/(m^2*K)\n",U2);
printf("\t lower limit of corrected overall heattransfer coefficient is : %.0f W/m^2/K, U is reduced from 4000 to between 444 and 1176 W/(m^2*K),fouling is crucial in this case and engineering was in serious error.\n",U3);  
//end