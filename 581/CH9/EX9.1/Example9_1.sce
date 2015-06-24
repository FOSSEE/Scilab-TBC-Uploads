
clear;
clc;

printf("\t Example 9.1\n");

T2=363;       // temp. of strip,K
T1=373;       //saturated temp.,K
p=1.013*10^5;            //pressure of water,N/m^2
psat=1.203*10^5;   //saturated pressure at 108 C,N/m^2
psat1=1.769*10^5;   //saturated pressure at 116 C,N/m^2
a=57.36*10^-3;        //surface tension, N/mat Tsat=108 C
a1=55.78*10^-3;        //surface tension, N/mat Tsat=116 C
Rb=2*a/(psat-p)*1000;        //bulk radius at 108 C, mm
Rb1=2*a1/(psat1-p)*1000;      // bulk radius at 116 C, mm

printf("\t bulk radius at 108 C is :%.3f mm\n",Rb);
printf("\t bulk radius at 116 C is :%.4f mm\n",Rb1);

printf("\t this means that the active nucleation sites would be holes with diameters very roughly on the order magnitude of 0.005 mm atleast on the heater .that is within the ransge of roughness of commercially finished surfaces. ")
//end
