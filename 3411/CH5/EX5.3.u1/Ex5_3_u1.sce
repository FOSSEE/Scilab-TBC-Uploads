//Example 5_3_u1
clc();
clear;
//To find the intercepts along the Y and Z axes
a=0.121          //units in nm
b=0.184          //units in nm
c=0.197          //units in nm
//Given miller indices are (2,3,1)
OA_OB=3/2
OA_OC=1/2
OB=(2/3)*b //units in nm
OC=2*c     //units in nm
printf("The Intercepts along the Y and Z axes are OB=%.3fnm and OC=%.3fnm",OB,OC)
