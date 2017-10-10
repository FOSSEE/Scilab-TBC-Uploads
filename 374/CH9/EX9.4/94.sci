//chapter 9 example 4//
clc
clear
//angular limit of the far field pattern=Am,length of the picture=l,numerical aperture=NA,distance of the fibre output end face from the screen=L//
Am=26.1;//in degrees//
NA=sind(Am);//numerical aperture//
printf("\n numerical aperture=%f \n",NA)
l=16.7;//in cm//
L=(l/2)/(tand(Am));
printf("\n distance from the screen=%f cm\n",L)