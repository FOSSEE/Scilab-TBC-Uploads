//Chapter 7,Example 7.3 Page 223
clc
clear
E = 100
Z1 = 1/600 // 1/Z1
Z2 = 1/800 // 1/Z2
Z3 = 1/200 // 1/Z3
E11 = (2*E*Z1)/((Z1+Z2+Z3)*10^-3)
Iz2 = E11*1000*Z2
Iz3 = E11*1000*Z3
printf (" E'' = %f kV \n",E11*10^-3)
printf (" Iz2′= %f amps \n",Iz2*10^-3)
printf (" Iz3′= %f amps \n",Iz3*10^-3)

//Answers may vary due to round off error
