clc;
close();
clear();
//page no 556
//prob no. 17.7
l=127-70.2;     //Difference in longitude
L=40.5    //Latitude of New York
d_km=35.786*10^3*sqrt(1+0.42*(1-cos(L*%pi/180)*cos(l*%pi/180)));
mprintf('The distance is %.0f km \n',d_km)
