//Chapter-18,Example 6,Page 407
clc();
close();

CO =0.46   //composition of CO

CH4 =0.1   //composition of CH4

H2 =0.4   //composition of H2

C2H2 =0.02   //composition of C2H2

N2=0.01   //composition of N2

//for reaction CO + (1/2)O2  = CO2

V1=CO*(1/2)   //volume of O2 required

//for reaction CH4 + 2O2  = CO2 + 2H2O

V2=CH4*2   //volume of O2 required

//for reaction H2 + (1/2)O2 = H2O

V3=H2*(1/2)   //volume of O2 required

//for reaction C2H2 + (5/2)O2 = 2CO2 +H2O

V4=C2H2*(5/2)   //volume of O2 required

total_v= V1+V2+V3+V4

//as air contains 21% of O2 by volume

V_air = total_v*100/21   //volume of air 

printf("the volume of air required is %.3f cubicmeter",V_air)
