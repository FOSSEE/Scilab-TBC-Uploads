clc;
clear;
OA=0.121 //cell parameter in nm
OB=0.184 //cell parameter in nm
OC=0.197 //cell parameter in nm
OA_by_OB=3/2 //ratio of fractional intercepts
OA_by_OC=1/2 //ratio of fractional intercepts

//calculation
OB=((2/3)*OB)
OC=(2)*OC
mprintf("The intercepts along along the y and the z axes is = %1.3f nm and %1.3f nm",OB,OC)
