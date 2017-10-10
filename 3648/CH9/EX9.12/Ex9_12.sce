
//Example 9_12
clc();
clear;
//To find out the sedimentation rate of spherical particles
b=2*10^-3   //units in cm
g=9.8    //Units in meters/sec^2
n=1   //units in m PI
Pp_Pt=1050   //units in Kg/Meter^3
vt=(((2*b^2*g)/(9*n))/(2*Pp_Pt))*10^6      //units in cm/sec
printf("Sedimentation is vt=")
disp(vt)
printf("cm/sec")
//in text book answer  is printed wrong as vt=4.36*10^-3 cm/sec but the correct answer is vt=4.14*10^-3 cm/sec
